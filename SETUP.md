# GitHub Profile 页面设置指南

这个仓库包含了自定义 GitHub Profile 页面的所有必要文件。按照以下步骤设置您的 GitHub Profile 页面：

## 步骤 1: 创建 GitHub Profile 仓库

1. 在 GitHub 上创建一个新的仓库，仓库名必须与您的 GitHub 用户名完全相同
2. 将仓库设置为公开（Public）
3. 不要初始化仓库（不要添加 README、.gitignore 或 license）

## 步骤 2: 上传文件

1. 将本仓库中的所有文件上传到您新创建的 GitHub Profile 仓库
2. 确保 `README.md` 文件位于仓库的根目录

## 步骤 3: 自定义内容

1. 编辑 `README.md` 文件，更新个人信息、技术栈和项目展示
2. 更新 `update-blog-posts.sh` 脚本中的变量，包括您的 GitHub 用户名和博客 URL
3. 更新 GitHub Actions 工作流文件中的相关信息

## 步骤 4: 设置 GitHub Actions

1. 在您的 GitHub Profile 仓库中，进入 "Settings" > "Actions" > "General"
2. 在 "Workflow permissions" 部分，选择 "Read and write permissions"
3. 点击 "Save" 保存设置

## 步骤 5: 测试自动更新

1. 进入 "Actions" 标签页
2. 选择 "Update GitHub Profile" 工作流
3. 点击 "Run workflow" 按钮手动触发工作流

## 自定义选项

### 更改主题颜色

您可以通过修改以下部分来更改页面的主题颜色：

1. GitHub 统计图表：修改 `theme` 参数，可选值包括 `default`、`dark`、`radical`、`merko`、`tokyonight`、`dracula`、`monokai`、`vision-friendly-dark`、`ayu-mirage` 等
2. 贡献图：修改 `theme` 参数，可选值与上面相同
3. 徽章：使用不同的徽章样式和颜色

### 添加更多统计信息

您可以使用以下服务添加更多统计信息：

1. [GitHub Readme Stats](https://github.com/anuraghazra/github-readme-stats)
2. [GitHub Profile Trophy](https://github.com/ryo-ma/github-profile-trophy)
3. [GitHub Contribution Graph](https://github.com/Ashutosh00710/github-readme-activity-graph)

### 添加动态内容

您可以使用以下服务添加动态内容：

1. [GitHub Profile Views Counter](https://github.com/antonkomarev/github-profile-views-counter)
2. [GitHub Profile Snake Animation](https://github.com/Platane/snk)
3. [GitHub Profile 3D Contrib](https://github.com/yoshi389111/github-profile-3d-contrib)

## 故障排除

如果您遇到问题，请检查以下内容：

1. 确保您的 GitHub Profile 仓库名称与您的 GitHub 用户名完全相同
2. 确保 `README.md` 文件位于仓库的根目录
3. 检查 GitHub Actions 工作流的权限设置
4. 查看 GitHub Actions 工作流的运行日志，查找可能的错误

## 资源

- [GitHub Profile README](https://docs.github.com/en/account-and-profile/setting-up-and-managing-your-github-profile/customizing-your-profile/managing-your-profile-readme)
- [GitHub Actions](https://docs.github.com/en/actions)
- [Shields.io](https://shields.io/) - 创建徽章
- [Simple Icons](https://simpleicons.org/) - 简单的品牌图标
