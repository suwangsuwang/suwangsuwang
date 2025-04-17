#!/bin/bash

# 设置变量
USERNAME="suwangsuwang"
BLOG_URL="https://suwangsuwang.github.io"
README_FILE="README.md"
TEMP_FILE="temp_readme.md"

# 获取最新的博客文章
echo "获取最新的博客文章..."
BLOG_POSTS=$(curl -s "$BLOG_URL/atom.xml" | grep -o '<title>.*</title>' | sed 's/<title>//g' | sed 's/<\/title>//g' | head -n 5)

# 创建临时文件
cp $README_FILE $TEMP_FILE

# 更新博客文章列表
echo "更新博客文章列表..."
sed -i '' "/<!-- BLOG-POST-LIST:START -->/,/<!-- BLOG-POST-LIST:END -->/c\\
<!-- BLOG-POST-LIST:START -->\\
$(echo "$BLOG_POSTS" | while read -r title; do
  # 提取文章链接（这里需要根据您的博客结构进行调整）
  link=$(echo "$title" | sed 's/ /-/g' | tr '[:upper:]' '[:lower:]')
  echo "- [$title]($BLOG_URL/$link/)"
done)\\
<!-- BLOG-POST-LIST:END -->" $TEMP_FILE

# 替换原文件
mv $TEMP_FILE $README_FILE

echo "博客文章列表已更新！" 