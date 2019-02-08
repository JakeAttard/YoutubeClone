<?php 
class SettingsFormProvider {

    public function createUserDetailsForm() {
        $firstNameInput = $this->createFirstNameInput(null);
        $lastNameInput = $this->createLastNameInput(null);
        $emailInput = $this->createEmailInput(null);
        $saveButton = $this->createSaveUserDetailsButton();

        return "<form action='processing.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>User Details</span>
                    $firstNameInput
                    $lastNameInput
                    $emailInput
                    $saveButton
                </form>";
    }

    public function createPasswordForm() {
        $oldPasswordInput = $this->createPasswordInput("oldPassword", "Old Password");
        $newPasswordInput = $this->createPasswordInput("newPassword", "New Password");
        $newPasswordConfirmInput = $this->createPasswordInput("newPasswordConfirm", "Confirm New Password");
        $saveButton = $this->createSavePasswordButton();

        return "<form action='processing.php' method='POST' enctype='multipart/form-data'>
                    <span class='title'>Update Password</span>
                    $oldPasswordInput
                    $newPasswordInput
                    $newPasswordConfirmInput
                    $saveButton
                </form>";
    }

    private function createFirstNameInput($value) {
        if($value == null) $value = "";

        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='First Name' name='firstName' value='$value' required>
                </div>";
    }

    private function createLastNameInput($value) {
        if($value == null) $value = "";

        return "<div class='form-group'>
                    <input class='form-control' type='text' placeholder='Last Name' name='lastName' value='$value' required>
                </div>";
    }

    private function createEmailInput($value) {
        if($value == null) $value = "";

        return "<div class='form-group'>
                    <input class='form-control' type='email' placeholder='Email' name='email' value='$value' required>
                </div>";
    }

    private function createSaveUserDetailsButton() {
        return "<button type='submit' class='btn btn-primary' name='saveDetailsButton'>Save</button>";
    }

    private function createPasswordInput($name, $placeholder) { 
        return "<div class='form-group'>
                    <input class='form-control' type='password' placeholder='$placeholder' name='$name' required>
                </div>";
    }

    private function createSavePasswordButton() {
        return "<button type='submit' class='btn btn-primary' name='savePasswordButton'>Save</button>";
    }
        
}
?>