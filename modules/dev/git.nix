top: {
  flake.modules = {
    homeManager.dev =
      hm:
      let
        userInfo = top.config.flake.meta.users.${hm.config.home.username};
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

          ignores = [
            ".direnv/"
            "result"
          ];
        };
      };
  };
}
