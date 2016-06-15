<style type="text/css">
    #header {
        box-shadow: none;
    }
</style>

<div class="register">
    <div class="register-block">
        <div class="alert alert-danger<!-- IF !error --> hidden<!-- ENDIF !error -->" id="register-error-notify">
            [[error:registration-error]]
            <p>{error}</p>
        </div>
        <form class="form-horizontal" role="form" action="{config.relative_path}/register" method="post">
        <div class="input-group fg-float">
            <span class="input-group-addon"><i class="fa fa-fw fa-envelope"></i></span>
            <div class="fg-line">
                <input class="form-control" type="email" name="email" id="email" autocorrect="off" autocapitalize="off" />
            </div>
            <label class="fg-label">[[register:email_address_placeholder]]</label>
            <span class="input-group-addon">
                <span id="email-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>

        <div class="input-group fg-float">
            <span class="input-group-addon"><i class="fa fa-fw fa-user"></i></span>
            <div class="fg-line">
                <input class="form-control" type="text" name="username" id="username" autocorrect="off" autocapitalize="off" autocomplete="off" />
            </div>
            <label class="fg-label">[[register:username_placeholder]]</label>
            <span class="input-group-addon">
                <span id="username-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <div class="input-group fg-float">
            <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
            <div class="fg-line">
                <input class="form-control" type="password" name="password" id="password" />
            </div>
            <label class="fg-label">[[register:password_placeholder]]</label>
            <span class="input-group-addon">
                <span id="password-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <div class="input-group fg-float">
            <span class="input-group-addon"><i class="fa fa-fw fa-lock"></i></span>
            <div class="fg-line">
                <input class="form-control" type="password" name="password-confirm" id="password-confirm" />
            </div>
            <label class="fg-label">[[register:confirm_password_placeholder]]</label>
            <span class="input-group-addon">
                <span id="password-confirm-notify"><i class="fa fa-circle-o"></i></span>
            </span>
        </div>
        
        <!-- BEGIN regFormEntry -->
        <div class="input-group">
            <div id="register-{regFormEntry.styleName}">
                {{regFormEntry.html}}
            </div>
        </div>
        <!-- END regFormEntry -->

        <!-- IF termsOfUse -->
        <div class="tos">{termsOfUse}</div>
        <div class="checkbox">
            <label>
                <input type="checkbox" name="agree-terms" id="agree-terms">
                <i class="input-helper"></i>
                [[register:agree_to_terms_of_use]]
            </label>
        </div>
        <!-- ENDIF termsOfUse -->
        <button class="btn btn-primary btn-lg btn-block" id="register" type="submit">[[register:register_now_button]]</button>
        <input id="referrer" type="hidden" name="referrer" value="" />
        <input id="token" type="hidden" name="token" value="" />
        </form>
    </div>

    <!-- IF alternate_logins -->
    <div class="register-options">
        <ul class="alternate-auth">
        <!-- BEGIN authentication -->
        <li class="{authentication.name}"><a rel="nofollow" target="_top" href="{config.relative_path}{authentication.url}"><i class="fa {authentication.icon} fa-2x"></i></a></li>
        <!-- END authentication -->
        </ul>
    </div>
    <!-- ENDIF alternate_logins -->
</div>
