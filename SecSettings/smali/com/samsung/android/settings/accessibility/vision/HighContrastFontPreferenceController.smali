.class public Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;
.super Lcom/android/settings/core/PreferenceController;
.source "HighContrastFontPreferenceController.java"

# interfaces
.implements Landroid/support/v7/preference/Preference$OnPreferenceChangeListener;


# instance fields
.field private mDialog:Landroid/app/AlertDialog;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0, p1}, Lcom/android/settings/core/PreferenceController;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    return-void
.end method

.method public static needAccFeatureConfirmDialog(Landroid/content/Context;)Z
    .locals 3

    const/4 v2, 0x0

    const-string/jumbo v1, "accessibility_feature_confirm_dialog"

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "toggle_high_text_contrast_preference_dialog_do_not_show_again"

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    return v1
.end method

.method public static onEmCallbackStateReceived(Lcom/samsung/android/settings/bixby/EmSettingsManager;Landroid/support/v7/preference/PreferenceScreen;Ljava/lang/String;)V
    .locals 5

    const-string/jumbo v2, "toggle_high_text_contrast_preference"

    invoke-virtual {p1, v2}, Landroid/support/v7/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v14/preference/SwitchPreference;

    if-nez v0, :cond_0

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->getStateId()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "HighContrastFontsOn"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_2

    const-string/jumbo v2, "HighContrastFontsState"

    const-string/jumbo v3, "AlreadyOn"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    :cond_1
    :goto_0
    return-void

    :cond_2
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_4

    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :goto_1
    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_3
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_4
    const-string/jumbo v2, "DoNotShowAgainChecked"

    const-string/jumbo v3, "AlreadySet"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    :cond_5
    const-string/jumbo v2, "HighContrastFontsOff"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->isChecked()Z

    move-result v2

    if-nez v2, :cond_6

    const-string/jumbo v2, "HighContrastFontsState"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "yes"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_FAILURE:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0

    :cond_6
    invoke-virtual {v0}, Landroid/support/v14/preference/SwitchPreference;->performClick()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->isLastState()Z

    move-result v2

    if-eqz v2, :cond_7

    const-string/jumbo v2, "HighContrastFontsState"

    const-string/jumbo v3, "AlreadyOff"

    const-string/jumbo v4, "no"

    invoke-virtual {p0, v2, v3, v4}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->setNlgScreenParam(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->requestNlg(Ljava/lang/String;)V

    :cond_7
    sget-object v2, Lcom/samsung/android/settings/bixby/EmSettingsManager;->EM_RESPONSE_RESULT_SUCCESS:Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->sendResponse(Lcom/samsung/android/sdk/bixby/BixbyApi$ResponseResults;)V

    goto :goto_0
.end method

.method private showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V
    .locals 9

    const/4 v8, 0x0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->dismiss()V

    iput-object v8, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    :cond_0
    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v5, "layout_inflater"

    invoke-virtual {v4, v5}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/LayoutInflater;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    const/4 v5, 0x1

    new-array v5, v5, [Ljava/lang/Object;

    iget-object v6, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    const v7, 0x7f12009b

    invoke-virtual {v6, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    const/4 v7, 0x0

    aput-object v6, v5, v7

    const v6, 0x7f121c01

    invoke-virtual {v4, v6, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0d001f

    invoke-virtual {v2, v4, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    const v4, 0x7f0a028e

    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    new-instance v4, Landroid/app/AlertDialog$Builder;

    iget-object v5, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    invoke-direct {v4, v5}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v4, v3}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;

    invoke-direct {v5, p0, v0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$1;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;Landroid/widget/CheckBox;)V

    const v6, 0x7f120895

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$2;

    invoke-direct {v5, p0}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$2;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;)V

    const/high16 v6, 0x1040000

    invoke-virtual {v4, v6, v5}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    new-instance v5, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$3;

    invoke-direct {v5, p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController$3;-><init>(Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;Landroid/support/v7/preference/Preference;)V

    invoke-virtual {v4, v5}, Landroid/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    iput-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    iget-object v4, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mDialog:Landroid/app/AlertDialog;

    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    return-void
.end method


# virtual methods
.method public getPreferenceKey()Ljava/lang/String;
    .locals 1

    const-string/jumbo v0, "toggle_high_text_contrast_preference"

    return-object v0
.end method

.method public isAvailable()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public onPreferenceChange(Landroid/support/v7/preference/Preference;Ljava/lang/Object;)Z
    .locals 6

    const/4 v2, 0x1

    const/4 v3, 0x0

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const-string/jumbo v1, "toggle_high_text_contrast_preference"

    invoke-virtual {p1}, Landroid/support/v7/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    const-string/jumbo v1, "HighContrastFontPreferenceController"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "mHighContrastFont : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->needAccFeatureConfirmDialog(Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->showAccFeatureConfirmDialog(Landroid/support/v7/preference/Preference;)V

    return v2

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "high_text_contrast_enabled"

    if-eqz v0, :cond_3

    move v1, v2

    :goto_0
    invoke-static {v4, v5, v1}, Landroid/provider/Settings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    if-eqz v0, :cond_1

    const/16 v3, 0x3e8

    :cond_1
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    const/16 v4, 0x12e

    const/16 v5, 0x1369

    invoke-static {v1, v4, v5, v3}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;IILjava/lang/Object;)V

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.android.settings"

    const-string/jumbo v4, "HCFT"

    invoke-static {v1, v3, v4}, Lcom/android/settings/Utils;->insertLog(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    return v2

    :cond_3
    move v1, v3

    goto :goto_0

    :cond_4
    return v3
.end method

.method public updateState(Landroid/support/v7/preference/Preference;)V
    .locals 4

    const/4 v0, 0x1

    const/4 v1, 0x0

    check-cast p1, Landroid/support/v14/preference/SwitchPreference;

    iget-object v2, p0, Lcom/samsung/android/settings/accessibility/vision/HighContrastFontPreferenceController;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "high_text_contrast_enabled"

    invoke-static {v2, v3, v1}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    if-ne v2, v0, :cond_0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/support/v14/preference/SwitchPreference;->setChecked(Z)V

    return-void

    :cond_0
    move v0, v1

    goto :goto_0
.end method
