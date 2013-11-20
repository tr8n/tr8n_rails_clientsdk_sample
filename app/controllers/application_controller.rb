#--
# Copyright (c) 2013 Michael Berkovich, tr8nhub.com
#
# Permission is hereby granted, free of charge, to any person obtaining
# a copy of this software and associated documentation files (the
# "Software"), to deal in the Software without restriction, including
# without limitation the rights to use, copy, modify, merge, publish,
# distribute, sublicense, and/or sell copies of the Software, and to
# permit persons to whom the Software is furnished to do so, subject to
# the following conditions:
#
# The above copyright notice and this permission notice shall be
# included in all copies or substantial portions of the Software.
#
# THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
# EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
# MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
# NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
# LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
# OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
# WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
#++


class ApplicationController < ActionController::Base
  protect_from_forgery

  rescue_from StandardError do |e|
    pp e, e.backtrace
    raise e
  end

private 

  def current_user
    @current_user ||= User.find_by_id(session[:user_id]) if session[:user_id]
  end
  helper_method :current_user

  def current_locale
    @current_locale ||= begin      
      if params[:locale]
        session[:locale] = params[:locale]
        save_locale = true
      elsif current_user and current_user.locale != nil
        session[:locale] = current_user.locale
      elsif session[:locale] == nil
        session[:locale] = tr8n_user_preferred_locale
        save_locale = (session[:locale] != Tr8n::Config.default_locale)
      end

      if save_locale and current_user
        current_user.update_attributes(:locale => session[:locale])
        Tr8n::LanguageUser.find_or_create(current_user, Tr8n::Language.by_locale(session[:locale]))
      end

      session[:locale]
    end
  end
  helper_method :current_locale

end
