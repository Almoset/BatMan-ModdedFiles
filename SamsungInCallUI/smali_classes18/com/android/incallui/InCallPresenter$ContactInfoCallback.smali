.class Lcom/android/incallui/InCallPresenter$ContactInfoCallback;
.super Ljava/lang/Object;
.source "InCallPresenter.java"

# interfaces
.implements Lcom/android/incallui/ContactInfoCache$ContactInfoCacheCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/incallui/InCallPresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ContactInfoCallback"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/InCallPresenter;


# direct methods
.method private constructor <init>(Lcom/android/incallui/InCallPresenter;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/incallui/InCallPresenter;Lcom/android/incallui/InCallPresenter$1;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;-><init>(Lcom/android/incallui/InCallPresenter;)V

    return-void
.end method


# virtual methods
.method public onContactInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 3

    const-string v1, "onContactInfoComplete"

    invoke-static {p0, v1}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v1}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    :cond_0
    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v1

    invoke-virtual {v1, p1}, Lcom/android/incallui/CallList;->getCallById(Ljava/lang/String;)Lcom/android/incallui/Call;

    move-result-object v0

    if-eqz v0, :cond_1

    if-eqz p2, :cond_1

    invoke-virtual {v0}, Lcom/android/incallui/Call;->getLogState()Lcom/android/incallui/Call$LogState;

    move-result-object v1

    iget v2, p2, Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;->contactLookupResult:I

    iput v2, v1, Lcom/android/incallui/Call$LogState;->contactLookupResult:I

    :cond_1
    return-void
.end method

.method public onContactInteractionsInfoComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    const-string v0, "onContactInteractionsInfoComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public onGifImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    const-string v0, "onGifImageLoadComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    :cond_0
    return-void
.end method

.method public onImageLoadComplete(Ljava/lang/String;Lcom/android/incallui/ContactInfoCache$ContactCacheEntry;)V
    .locals 1

    const-string v0, "onImageLoadComplete"

    invoke-static {p0, v0}, Lcom/android/incallui/Log;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    invoke-virtual {v0}, Lcom/android/incallui/InCallPresenter;->isActivityStarted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/incallui/InCallPresenter$ContactInfoCallback;->this$0:Lcom/android/incallui/InCallPresenter;

    # getter for: Lcom/android/incallui/InCallPresenter;->mInCallActivity:Lcom/android/incallui/InCallActivity;
    invoke-static {v0}, Lcom/android/incallui/InCallPresenter;->access$400(Lcom/android/incallui/InCallPresenter;)Lcom/android/incallui/InCallActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/incallui/InCallActivity;->updateGradientColor()V

    :cond_0
    return-void
.end method
