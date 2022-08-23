class Api {
  String cmd = 'http://localhost:8081';
  String query = 'http://localhost:8082';
  String msd = 'http://localhost:8083';

  //Menu Page
  Uri getPage() {
    return Uri.parse(query + "/page/getAllPageByIdRole");
  }

  Uri createPage() {
    return Uri.parse(cmd + "/page/savePage");
  }

  Uri deletePage(String id) {
    return Uri.parse(cmd + "/page/deletePage/" + id);
  }

  //Menu Setting
  Uri getSetting() {
    return Uri.parse(query + "/page/getAllSettingByIdRole");
  }

  Uri createSetting() {
    return Uri.parse(cmd + "/page/saveSetting");
  }

  Uri updateSetting() {
    return Uri.parse(cmd + "/page/updateSetting");
  }

  //List Menu
  Uri getMenu(String idrole) {
    return Uri.parse(query + "/menu/" + idrole);
  }

  //Menu Post
  Uri getPost() {
    return Uri.parse(query + "/post/getAllPostByIdRole");
  }

  Uri createPost() {
    return Uri.parse(cmd + "/post/savePost");
  }

  Uri deletePost(String id) {
    return Uri.parse(cmd + "/post/deletePost/" + id);
  }

  //Menu Master Data
  //Location
  Uri createLocation() {
    return Uri.parse(cmd);
  }

  Uri getLocation() {
    return Uri.parse(cmd);
  }

  Uri deleteLocation() {
    return Uri.parse(cmd);
  }

  //Level
  Uri createLevel() {
    return Uri.parse(cmd);
  }

  Uri getLevel() {
    return Uri.parse(cmd);
  }

  Uri deleteLevel() {
    return Uri.parse(cmd);
  }

  //Industry
  Uri createIndustry() {
    return Uri.parse(cmd);
  }

  Uri getIndustry() {
    return Uri.parse(cmd);
  }

  Uri deleteIndustry() {
    return Uri.parse(cmd);
  }

  //Position
  Uri createPosition() {
    return Uri.parse(msd);
  }

  Uri getPosition() {
    return Uri.parse(msd + "/v1/masterdata/position/get.all.name");
  }

  Uri deletePosition() {
    return Uri.parse(cmd);
  }

  //Skill
  Uri createSkill() {
    return Uri.parse(cmd);
  }

  Uri getSkill() {
    return Uri.parse(cmd);
  }

  Uri deleteSkill() {
    return Uri.parse(cmd);
  }

  //Dashboard
  Uri getAllTalent() {
    return Uri.parse(cmd);
  }

  Uri getAvailable() {
    return Uri.parse(cmd);
  }

  Uri getHired() {
    return Uri.parse(cmd);
  }

  //Talent Management
  Uri searchTalent() {
    return Uri.parse(cmd);
  }

  Uri createTalent() {
    return Uri.parse(cmd);
  }

  Uri editTalent() {
    return Uri.parse(cmd);
  }
}
