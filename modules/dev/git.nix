top: {
  flake.modules = {
    homeManager.dev =
      { config, ... }:
      let
        userInfo = top.config.flake.meta.users.${config.home.username};
      in
        {
          programs.git = {
            enable = true;
            settings = {
	            user = {
	              name = userInfo.name;
	              email = userInfo.email;
	            };
	          };

            signing = {
              signByDefault = true;
              format = "openpgp";
              inherit (userInfo) key;
            };
            
            ignores = [
              ".direnv/"
              "result"
            ];
          };
        };
  };
}
