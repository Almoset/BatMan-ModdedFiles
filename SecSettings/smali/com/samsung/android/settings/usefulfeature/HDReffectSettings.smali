.class public Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;
.super Lcom/android/settings/SettingsPreferenceFragment;
.source "HDReffectSettings.java"

# interfaces
.implements Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;
.implements Lcom/android/settings/search/Indexable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;
    }
.end annotation


# instance fields
.field private hrdView:Landroid/view/View;

.field private mAppListPreference:Landroid/support/v7/preference/SecPreferenceCategory;

.field public mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

.field private mHDRSummary:Landroid/widget/TextView;

.field private mImageView:Landroid/widget/ImageView;

.field private mList:[Ljava/lang/String;

.field private mPkgname:Ljava/lang/String;

.field private mSwitchBar:Lcom/android/settings/widget/SwitchBar;


# direct methods
.method static synthetic -get0(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/samsung/android/settings/bixby/EmSettingsManager;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-object v0
.end method

.method static synthetic -get1(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)Lcom/android/settings/widget/SwitchBar;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    invoke-direct {p0}, Lcom/android/settings/SettingsPreferenceFragment;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mPkgname:Ljava/lang/String;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    new-instance v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings$1;-><init>(Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;)V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    return-void
.end method

.method private SetImage(I)V
    .locals 2

    packed-switch p1, :pswitch_data_0

    :goto_0
    return-void

    :pswitch_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080752

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_1
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    const v1, 0x7f080753

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    goto :goto_0

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private SetScreenView()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string/jumbo v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    const v1, 0x7f0d013e

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    const v2, 0x7f0a023a

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHDRSummary:Landroid/widget/TextView;

    invoke-static {}, Lcom/samsung/android/feature/SemFloatingFeature;->getInstance()Lcom/samsung/android/feature/SemFloatingFeature;

    move-result-object v1

    const-string/jumbo v2, "SEC_FLOATING_FEATURE_SETTINGS_CONFIG_BRAND_NAME"

    invoke-virtual {v1, v2}, Lcom/samsung/android/feature/SemFloatingFeature;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "Galaxy Note7"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mHDRSummary:Landroid/widget/TextView;

    const v2, 0x7f120cc7

    invoke-virtual {p0, v2}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    const v2, 0x7f0a0414

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mImageView:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setHeaderView(Landroid/view/View;)V

    return-void
.end method

.method private setAppListUp()V
    .locals 21

    const-string/jumbo v17, "HDReffectSettings"

    const-string/jumbo v18, "setAppListUp start "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    if-lez v17, :cond_0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/support/v7/preference/SecPreferenceCategory;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/support/v7/preference/SecPreferenceCategory;->removeAll()V

    :cond_0
    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x1070024

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v17

    const v18, 0x107001e

    invoke-virtual/range {v17 .. v18}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v12

    array-length v0, v11

    move/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    add-int v17, v17, v18

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x0

    move/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    move/from16 v3, v18

    invoke-static {v12, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    array-length v0, v12

    move/from16 v18, v0

    array-length v0, v11

    move/from16 v19, v0

    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-static {v11, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    const-string/jumbo v17, "HDReffectSettings"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v19, "setAppListUp mList.length "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v19, v0

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v15

    new-instance v10, Lcom/samsung/android/settings/IconResizer;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v10, v0}, Lcom/samsung/android/settings/IconResizer;-><init>(Landroid/content/Context;)V

    const v17, 0x7f0704d6

    move/from16 v0, v17

    invoke-virtual {v10, v0}, Lcom/samsung/android/settings/IconResizer;->setIconSize(I)V

    const/4 v8, 0x0

    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v8, v0, :cond_3

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mList:[Ljava/lang/String;

    move-object/from16 v17, v0

    aget-object v17, v17, v8

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v14

    const/4 v4, 0x0

    const/4 v9, 0x0

    const/16 v16, 0x0

    const/4 v13, 0x0

    const/16 v17, 0x80

    :try_start_0
    move/from16 v0, v17

    invoke-virtual {v15, v14, v0}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v4

    :goto_1
    if-eqz v4, :cond_2

    const/16 v17, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v4, v15, v0, v1}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;ZI)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v4, v15}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v17

    invoke-interface/range {v17 .. v17}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/settings/Utils;->isRTL(Landroid/content/Context;)Z

    move-result v17

    if-eqz v17, :cond_1

    invoke-static {}, Landroid/text/BidiFormatter;->getInstance()Landroid/text/BidiFormatter;

    move-result-object v6

    invoke-virtual {v13}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v17

    sget-object v18, Landroid/text/TextDirectionHeuristics;->RTL:Landroid/text/TextDirectionHeuristic;

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/text/BidiFormatter;->unicodeWrap(Ljava/lang/String;Landroid/text/TextDirectionHeuristic;)Ljava/lang/String;

    move-result-object v13

    :cond_1
    invoke-virtual {v10, v9}, Lcom/samsung/android/settings/IconResizer;->createIconThumbnail(Landroid/graphics/drawable/Drawable;)Landroid/graphics/drawable/Drawable;

    move-result-object v16

    new-instance v5, Landroid/support/v7/preference/SecPreference;

    invoke-virtual/range {p0 .. p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v5, v0}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v14}, Landroid/support/v7/preference/SecPreference;->setKey(Ljava/lang/String;)V

    invoke-virtual {v5, v13}, Landroid/support/v7/preference/SecPreference;->setTitle(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setPersistent(Z)V

    move-object/from16 v0, v16

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setIcon(Landroid/graphics/drawable/Drawable;)V

    const-string/jumbo v17, ""

    move-object/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setSummary(Ljava/lang/CharSequence;)V

    const/16 v17, 0x0

    move/from16 v0, v17

    invoke-virtual {v5, v0}, Landroid/support/v7/preference/SecPreference;->setSelectable(Z)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/support/v7/preference/SecPreferenceCategory;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v5}, Landroid/support/v7/preference/SecPreferenceCategory;->addPreference(Landroid/support/v7/preference/Preference;)Z

    :cond_2
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    :catch_0
    move-exception v7

    goto :goto_1

    :cond_3
    const-string/jumbo v17, "HDReffectSettings"

    const-string/jumbo v18, "setAppListUp end "

    invoke-static/range {v17 .. v18}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getMetricsCategory()I
    .locals 1

    const/16 v0, 0x1118

    return v0
.end method

.method public intiView()V
    .locals 8

    const/4 v7, 0x1

    const/4 v6, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hdr_effect"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v7, :cond_2

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "hdr_effect"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v3

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "sem_perfomance_mode"

    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v4

    if-nez v4, :cond_1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v4

    invoke-virtual {v4}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v4

    if-eqz v4, :cond_3

    :cond_1
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    const/4 v1, 0x0

    const/4 v3, 0x0

    :goto_1
    invoke-direct {p0, v3}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v1}, Lcom/android/settings/widget/SwitchBar;->setChecked(Z)V

    return-void

    :cond_2
    const/4 v1, 0x0

    goto :goto_0

    :cond_3
    invoke-static {}, Lcom/android/settings/Utils;->isSupportBoostMode()Z

    move-result v4

    if-eqz v4, :cond_6

    const/4 v4, 0x2

    if-ne v2, v4, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string/jumbo v5, "pbm_video_enhancer"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_4

    const/4 v0, 0x1

    :goto_2
    move v1, v0

    if-eqz v0, :cond_5

    const/4 v3, 0x1

    :goto_3
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v6}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1

    :cond_4
    const/4 v0, 0x0

    goto :goto_2

    :cond_5
    const/4 v3, 0x0

    goto :goto_3

    :cond_6
    iget-object v4, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v4, v7}, Lcom/android/settings/widget/SwitchBar;->setEnabled(Z)V

    goto :goto_1
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/android/settings/SettingsActivity;

    invoke-virtual {v0}, Lcom/android/settings/SettingsActivity;->getSwitchBar()Lcom/android/settings/widget/SwitchBar;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v1}, Lcom/android/settings/widget/SwitchBar;->show()V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetScreenView()V

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onActivityCreated(Landroid/os/Bundle;)V

    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 4

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    iget-object v1, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->hrdView:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setEmptyView(Landroid/view/View;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetScreenView()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hdr_effect"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    const-string/jumbo v0, "HDReffectSettings"

    const-string/jumbo v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f150073

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->addPreferencesFromResource(I)V

    const-string/jumbo v0, "hdr_effect_app_list_preference"

    invoke-virtual {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->findPreference(Ljava/lang/CharSequence;)Landroid/support/v7/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/support/v7/preference/SecPreferenceCategory;

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mAppListPreference:Landroid/support/v7/preference/SecPreferenceCategory;

    new-instance v0, Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-direct {v0}, Lcom/samsung/android/settings/bixby/EmSettingsManager;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    return-void
.end method

.method public onDestroyView()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onDestroyView()V

    const-string/jumbo v0, "HDReffectSettings"

    const-string/jumbo v1, "onDestroyView"

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0}, Lcom/android/settings/widget/SwitchBar;->hide()V

    return-void
.end method

.method public onMultiWindowModeChanged(Z)V
    .locals 3

    invoke-super {p0, p1}, Lcom/android/settings/SettingsPreferenceFragment;->onMultiWindowModeChanged(Z)V

    const-string/jumbo v0, "HDReffectSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onMultiWindowModeChanged : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->intiView()V

    return-void
.end method

.method public onPause()V
    .locals 2

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->removeOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    const-string/jumbo v1, "VideoEnhancer"

    invoke-virtual {v0, v1}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->clearEmService(Ljava/lang/Object;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    invoke-super {p0}, Lcom/android/settings/SettingsPreferenceFragment;->onResume()V

    invoke-static {}, Lcom/android/settings/Utils;->isDesktopModeSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0}, Lcom/android/settings/Utils;->isDesktopMode(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->finish()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mSwitchBar:Lcom/android/settings/widget/SwitchBar;

    invoke-virtual {v0, p0}, Lcom/android/settings/widget/SwitchBar;->addOnSwitchChangeListener(Lcom/android/settings/widget/SwitchBar$OnSwitchChangeListener;)V

    invoke-direct {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->setAppListUp()V

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->intiView()V

    iget-object v0, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmSettingsManager:Lcom/samsung/android/settings/bixby/EmSettingsManager;

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->mEmCallback:Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;

    const-string/jumbo v3, "VideoEnhancer"

    invoke-virtual {v0, v1, v2, v3}, Lcom/samsung/android/settings/bixby/EmSettingsManager;->bindEmService(Landroid/content/Context;Lcom/samsung/android/settings/bixby/EmSettingsManager$IEmCallback;Ljava/lang/Object;)V

    return-void
.end method

.method public onSwitchChanged(Landroid/widget/Switch;Z)V
    .locals 4

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->isInMultiWindowMode()Z

    move-result v1

    if-nez v1, :cond_0

    const-string/jumbo v1, "HDReffectSettings"

    const-string/jumbo v2, "onSwitchChanged"

    invoke-static {v1, v2}, Landroid/util/secutil/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string/jumbo v2, "hdr_effect"

    invoke-static {v1, v2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {p0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f0b0271

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    if-eqz p2, :cond_2

    const/16 v1, 0x3e8

    :goto_1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v2, v3, v1}, Lcom/android/settings/Utils;->insertEventwithDetailLog(Landroid/content/Context;ILjava/lang/Object;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/settings/usefulfeature/HDReffectSettings;->SetImage(I)V

    :cond_0
    return-void

    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method
