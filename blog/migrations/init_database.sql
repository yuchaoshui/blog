CREATE TABLE `users` (
  `id`        SERIAL       NOT NULL,
  `nickname`  VARCHAR(64)  NOT NULL
  COMMENT '用户名',
  `email`     VARCHAR(128) NOT NULL
  COMMENT '用户注册邮箱',
  `description` VARCHAR(255) NOT NULL DEFAULT ''
  COMMENT '用户描述',
  `about_me`    TEXT NOT NULL DEFAULT ''
  COMMENT '个人详细介绍',
  `remark`    VARCHAR(255) NOT NULL DEFAULT ''
  COMMENT '备注',
  `is_drop`   TINYINT(4)   NOT NULL DEFAULT 0
  COMMENT '是否删除',
  `create_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP
  ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE (`email`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  COMMENT = '用户表';


CREATE TABLE `local_auth` (
  `id`        SERIAL       NOT NULL,
  `user_id`   BIGINT       NOT NULL
  COMMENT '用户id',
  `password`  VARCHAR(128) NOT NULL
  COMMENT '用户密码',
  `remark`    VARCHAR(255) NOT NULL DEFAULT ''
  COMMENT '备注',
  `is_drop`   TINYINT(4)   NOT NULL DEFAULT 0
  COMMENT '是否删除',
  `create_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP,
  `update_at` DATETIME     NOT NULL DEFAULT CURRENT_TIMESTAMP
  ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`),
  UNIQUE (`user_id`)
)
  ENGINE = InnoDB
  DEFAULT CHARSET = utf8mb4
  COLLATE = utf8mb4_unicode_ci
  COMMENT = '本地验证表';

