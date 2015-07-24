-- MySQL Workbench Synchronization
-- Generated: 2015-07-09 19:49
-- Model: New Model
-- Version: 1.0
-- Project: Name of the project
-- Author: Faizan Ayubi

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='TRADITIONAL,ALLOW_INVALID_DATES';

ALTER TABLE `newswiftintern`.`answers` 
ADD INDEX `fk_answers_questions1_idx` (`ques_id` ASC),
ADD INDEX `fk_answers_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`applications` 
ADD INDEX `fk_applications_students1_idx` (`student_id` ASC),
ADD INDEX `fk_applications_opportunities1_idx` (`opportunity_id` ASC);

ALTER TABLE `newswiftintern`.`balances` 
ADD INDEX `fk_balances_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`bankaccounts` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `user_id`),
ADD INDEX `fk_bankaccounts_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`blogposts` 
ADD INDEX `fk_blogposts_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`conversations` 
ADD INDEX `fk_conversations_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`crms` 
ADD INDEX `fk_crms_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`experiences` 
ADD INDEX `fk_experiences_users_idx` (`user_id` ASC),
ADD INDEX `fk_experiences_organizations1_idx` (`organization_id` ASC);

ALTER TABLE `newswiftintern`.`followers` 
ADD INDEX `fk_followers_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`images` 
ADD INDEX `fk_images_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`members` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `user_id`),
ADD INDEX `fk_members_users1_idx` (`user_id` ASC),
ADD INDEX `fk_members_organizations1_idx` (`organization_id` ASC);

ALTER TABLE `newswiftintern`.`newsletters` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `message_id`),
ADD INDEX `fk_newsletters_messages1_idx` (`message_id` ASC);

ALTER TABLE `newswiftintern`.`opportunities` 
ADD INDEX `fk_opportunities_users1_idx` (`user_id` ASC),
ADD INDEX `fk_opportunities_organizations1_idx` (`organization_id` ASC);

ALTER TABLE `newswiftintern`.`options` 
ADD INDEX `fk_options_questions1_idx` (`ques_id` ASC);

ALTER TABLE `newswiftintern`.`orders` 
ADD INDEX `fk_orders_users1_idx` (`user_id` ASC),
ADD INDEX `fk_orders_transactions1_idx` (`transaction_id` ASC);

ALTER TABLE `newswiftintern`.`organizations` 
ADD INDEX `fk_organizations_photographs1_idx` (`photo_id` ASC);

ALTER TABLE `newswiftintern`.`participants` 
ADD INDEX `fk_participants_users1_idx` (`user_id` ASC),
ADD INDEX `fk_participants_tests1_idx` (`test_id` ASC);

ALTER TABLE `newswiftintern`.`qualifications` 
ADD INDEX `fk_qualifications_organizations1_idx` (`organization_id` ASC),
ADD INDEX `fk_qualifications_students1_idx` (`student_id` ASC);

ALTER TABLE `newswiftintern`.`questions` 
ADD INDEX `fk_questions_tests1_idx` (`test_id` ASC);

ALTER TABLE `newswiftintern`.`resumes` 
ADD INDEX `fk_resumes_students1_idx` (`student_id` ASC);

ALTER TABLE `newswiftintern`.`rsvps` 
ADD INDEX `fk_rsvps_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`socials` 
ADD INDEX `fk_socials_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`sponsoreds` 
ADD INDEX `fk_sponsoreds_users1_idx` (`user_id` ASC),
ADD INDEX `fk_sponsoreds_opportunities1_idx` (`opportunity_id` ASC);

ALTER TABLE `newswiftintern`.`students` 
DROP PRIMARY KEY,
ADD PRIMARY KEY (`id`, `user_id`),
ADD INDEX `fk_students_users1_idx` (`user_id` ASC);

ALTER TABLE `newswiftintern`.`tests` 
ADD INDEX `fk_tests_users1_idx` (`user_id` ASC),
ADD INDEX `fk_tests_organizations1_idx` (`organization_id` ASC);

ALTER TABLE `newswiftintern`.`works` 
ADD INDEX `fk_works_organizations1_idx` (`organization_id` ASC),
ADD INDEX `fk_works_students1_idx` (`student_id` ASC);

ALTER TABLE `newswiftintern`.`answers` 
ADD CONSTRAINT `fk_answers_questions1`
  FOREIGN KEY (`ques_id`)
  REFERENCES `newswiftintern`.`questions` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_answers_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`applications` 
ADD CONSTRAINT `fk_applications_students1`
  FOREIGN KEY (`student_id`)
  REFERENCES `newswiftintern`.`students` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_applications_opportunities1`
  FOREIGN KEY (`opportunity_id`)
  REFERENCES `newswiftintern`.`opportunities` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`balances` 
ADD CONSTRAINT `fk_balances_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`bankaccounts` 
ADD CONSTRAINT `fk_bankaccounts_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`blogposts` 
ADD CONSTRAINT `fk_blogposts_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`experiences` 
ADD CONSTRAINT `fk_experiences_users`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_experiences_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`followers` 
ADD CONSTRAINT `fk_followers_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`images` 
ADD CONSTRAINT `fk_images_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`members` 
ADD CONSTRAINT `fk_members_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_members_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`opportunities` 
ADD CONSTRAINT `fk_opportunities_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_opportunities_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`options` 
ADD CONSTRAINT `fk_options_questions1`
  FOREIGN KEY (`ques_id`)
  REFERENCES `newswiftintern`.`questions` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`orders` 
ADD CONSTRAINT `fk_orders_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_orders_transactions1`
  FOREIGN KEY (`transaction_id`)
  REFERENCES `newswiftintern`.`transactions` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `newswiftintern`.`organizations` 
ADD CONSTRAINT `fk_organizations_photographs1`
  FOREIGN KEY (`photo_id`)
  REFERENCES `newswiftintern`.`photographs` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`participants` 
ADD CONSTRAINT `fk_participants_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_participants_tests1`
  FOREIGN KEY (`test_id`)
  REFERENCES `newswiftintern`.`tests` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`qualifications` 
ADD CONSTRAINT `fk_qualifications_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_qualifications_students1`
  FOREIGN KEY (`student_id`)
  REFERENCES `newswiftintern`.`students` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION;

ALTER TABLE `newswiftintern`.`questions` 
ADD CONSTRAINT `fk_questions_tests1`
  FOREIGN KEY (`test_id`)
  REFERENCES `newswiftintern`.`tests` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`resumes` 
ADD CONSTRAINT `fk_resumes_students1`
  FOREIGN KEY (`student_id`)
  REFERENCES `newswiftintern`.`students` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`rsvps` 
ADD CONSTRAINT `fk_rsvps_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`socials` 
ADD CONSTRAINT `fk_socials_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`sponsoreds` 
ADD CONSTRAINT `fk_sponsoreds_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE NO ACTION
  ON UPDATE NO ACTION,
ADD CONSTRAINT `fk_sponsoreds_opportunities1`
  FOREIGN KEY (`opportunity_id`)
  REFERENCES `newswiftintern`.`opportunities` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`students` 
ADD CONSTRAINT `fk_students_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`tests` 
ADD CONSTRAINT `fk_tests_users1`
  FOREIGN KEY (`user_id`)
  REFERENCES `newswiftintern`.`users` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_tests_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;

ALTER TABLE `newswiftintern`.`works` 
ADD CONSTRAINT `fk_works_organizations1`
  FOREIGN KEY (`organization_id`)
  REFERENCES `newswiftintern`.`organizations` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE,
ADD CONSTRAINT `fk_works_students1`
  FOREIGN KEY (`student_id`)
  REFERENCES `newswiftintern`.`students` (`id`)
  ON DELETE CASCADE
  ON UPDATE CASCADE;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
