.class Lcom/android/incallui/service/SecCallPopupContainer$9;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SecCallPopupContainer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/incallui/service/SecCallPopupContainer;->animateForAnswerCall()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/incallui/service/SecCallPopupContainer;


# direct methods
.method constructor <init>(Lcom/android/incallui/service/SecCallPopupContainer;)V
    .locals 0

    iput-object p1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    const/4 v3, 0x0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    const/4 v2, 0x0

    # setter for: Lcom/android/incallui/service/SecCallPopupContainer;->mIsAnswerProcessing:Z
    invoke-static {v1, v2}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1702(Lcom/android/incallui/service/SecCallPopupContainer;Z)Z

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/service/SecCallPopupService;->updateViewLayout()V

    invoke-static {}, Lcom/android/incallui/InCallPresenter;->getInstance()Lcom/android/incallui/InCallPresenter;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/incallui/InCallPresenter;->getInCallState()Lcom/android/incallui/InCallPresenter$InCallState;

    move-result-object v0

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRingingCallPopupButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1800(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mCallPopupInfo:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$1900(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mDuringCallPopupButtons:Landroid/view/View;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2000(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/View;->setTranslationZ(F)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mRootView:Landroid/widget/RelativeLayout;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$2100(Lcom/android/incallui/service/SecCallPopupContainer;)Landroid/widget/RelativeLayout;

    move-result-object v1

    const v2, 0x7f0201af

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    iget-object v1, p0, Lcom/android/incallui/service/SecCallPopupContainer$9;->this$0:Lcom/android/incallui/service/SecCallPopupContainer;

    # getter for: Lcom/android/incallui/service/SecCallPopupContainer;->mSecCallPopupService:Lcom/android/incallui/service/SecCallPopupService;
    invoke-static {v1}, Lcom/android/incallui/service/SecCallPopupContainer;->access$000(Lcom/android/incallui/service/SecCallPopupContainer;)Lcom/android/incallui/service/SecCallPopupService;

    move-result-object v1

    invoke-static {}, Lcom/android/incallui/CallList;->getInstance()Lcom/android/incallui/CallList;

    move-result-object v2

    invoke-virtual {v1, v0, v0, v2}, Lcom/android/incallui/service/SecCallPopupService;->onStateChange(Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/InCallPresenter$InCallState;Lcom/android/incallui/CallList;)V

    return-void
.end method
