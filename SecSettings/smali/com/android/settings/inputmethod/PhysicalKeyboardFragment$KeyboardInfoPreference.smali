.class final Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;
.super Landroid/support/v7/preference/SecPreference;
.source "PhysicalKeyboardFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/inputmethod/PhysicalKeyboardFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "KeyboardInfoPreference"
.end annotation


# instance fields
.field private final collator:Ljava/text/Collator;

.field private final mAutoMataLanguage:Z

.field private final mImSubtypeName:Ljava/lang/CharSequence;

.field private final mImeName:Ljava/lang/CharSequence;


# direct methods
.method private constructor <init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Z)V
    .locals 3

    const v2, 0x7f120da2

    invoke-direct {p0, p1}, Landroid/support/v7/preference/SecPreference;-><init>(Landroid/content/Context;)V

    invoke-static {}, Ljava/text/Collator;->getInstance()Ljava/text/Collator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImi:Landroid/view/inputmethod/InputMethodInfo;

    iget-object v1, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-static {p1, v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    iput-boolean p3, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mAutoMataLanguage:Z

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v1, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-static {p1, v0, v1}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setTitle(Ljava/lang/CharSequence;)V

    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    if-eqz v0, :cond_0

    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mLayout:Landroid/hardware/input/KeyboardLayout;

    invoke-virtual {v0}, Landroid/hardware/input/KeyboardLayout;->getLabel()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    return-void

    :cond_0
    if-eqz p3, :cond_1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_1
    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    if-eqz v0, :cond_3

    iget-object v0, p2, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;->mImSubtype:Landroid/view/inputmethod/InputMethodSubtype;

    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodSubtype;->getLocale()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "en_US"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_2
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method synthetic constructor <init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;ZLcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;-><init>(Landroid/content/Context;Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$Keyboards$KeyboardInfo;Z)V

    return-void
.end method

.method private compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I
    .locals 3

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->collator:Ljava/text/Collator;

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {p2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    return v0

    :cond_1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    const/4 v0, -0x1

    return v0

    :cond_2
    const/4 v0, 0x1

    return v0
.end method

.method private static formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 3

    if-nez p2, :cond_0

    return-object p1

    :cond_0
    const v0, 0x7f121453

    invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static getDisplayName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 3

    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {p1, v2}, Landroid/view/inputmethod/InputMethodInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p0, p1, p2}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {p0, v1, v0}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->formatDisplayName(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    return-object v2
.end method

.method private static getImSubtypeName(Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;Landroid/view/inputmethod/InputMethodSubtype;)Ljava/lang/CharSequence;
    .locals 1

    const/4 v0, 0x0

    if-eqz p2, :cond_0

    invoke-static {p2, p0, p1}, Lcom/android/settingslib/inputmethod/InputMethodAndSubtypeUtil;->getSubtypeLocaleNameAsSentence(Landroid/view/inputmethod/InputMethodSubtype;Landroid/content/Context;Landroid/view/inputmethod/InputMethodInfo;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    return-object v0
.end method


# virtual methods
.method public compareTo(Landroid/support/v7/preference/Preference;)I
    .locals 4

    instance-of v2, p1, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    if-nez v2, :cond_0

    invoke-super {p0, p1}, Landroid/support/v7/preference/SecPreference;->compareTo(Landroid/support/v7/preference/Preference;)I

    move-result v2

    return v2

    :cond_0
    move-object v0, p1

    check-cast v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    iget-object v3, v0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    invoke-direct {p0, v2, v3}, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->compare(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)I

    move-result v1

    :cond_1
    return v1
.end method

.method public final getSubTypeName()Ljava/lang/CharSequence;
    .locals 1

    iget-object v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mImSubtypeName:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public final isAutoMataLanguage()Z
    .locals 1

    iget-boolean v0, p0, Lcom/android/settings/inputmethod/PhysicalKeyboardFragment$KeyboardInfoPreference;->mAutoMataLanguage:Z

    return v0
.end method
