.class public Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/EmEventListener;
.super Landroid/content/BroadcastReceiver;


# static fields
.field private static final TAG:Ljava/lang/String; = "EmEventListener"


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private startGetPolicy(Landroid/content/Context;)V
    .locals 4

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_0

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->registerAlarm(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0
.end method

.method private startHeartbeat(Landroid/content/Context;)V
    .locals 8

    const-wide/16 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    const-string v2, "last_heart_beat_time"

    invoke-static {v2, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    const-string v4, "heart_beat_interval"

    invoke-static {v4, v6, v7}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/EPref;->getLong(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v6, v2, v6

    if-eqz v6, :cond_0

    add-long v6, v2, v4

    cmp-long v6, v0, v6

    if-lez v6, :cond_2

    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x1a

    if-lt v2, v3, :cond_1

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    :goto_0
    return-void

    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;

    invoke-direct {v0, p1, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v0}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    :cond_2
    add-long v0, v2, v4

    invoke-static {p1, v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->registerAlarm(Landroid/content/Context;J)V

    goto :goto_0
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "action : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "EmEventListener"

    invoke-static {v1, v2}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->EMERGENCY_STATE_CHANGED:Ljava/lang/String;

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    const-string v1, "reason"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "reason = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "EmEventListener"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;->getInstance(Landroid/content/Context;)Lcom/samsung/android/sdk/enhancedfeatures/EnhancedFeatures;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v2, "enhancedFeatures was not null"

    const-string v3, "EmEventListener"

    invoke-static {v2, v3}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->i(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {v0}, Lcom/samsung/android/sdk/enhancedfeatures/internal/EasySignUpInterface;->isAuth(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_0

    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_ENABLING:I

    if-ne v1, v2, :cond_1

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/HeartBeatTransaction;->cancel(Landroid/content/Context;)V

    invoke-static {p1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/transaction/GetPolicyTransaction;->cancel(Landroid/content/Context;)V

    const-string v0, "Cancel alarms for HeartBeat and Policy"

    const-string v1, "EmEventListener"

    invoke-static {v0, v1}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/util/ELog;->d(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    :cond_1
    sget v2, Lcom/samsung/android/sdk/enhancedfeatures/internal/common/util/apiInterface/EmergencyConstantsRef;->MODE_DISABLED:I

    if-ne v1, v2, :cond_0

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/EmEventListener;->startHeartbeat(Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/sdk/enhancedfeatures/easysignup/internal/receiver/EmEventListener;->startGetPolicy(Landroid/content/Context;)V

    goto :goto_0
.end method
