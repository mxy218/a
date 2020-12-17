.class final Lcom/android/systemui/power/PowerUI$Receiver;
.super Landroid/content/BroadcastReceiver;
.source "PowerUI.java"


# annotations
.annotation build Lcom/android/internal/annotations/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/power/PowerUI;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x10
    name = "Receiver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/power/PowerUI;


# direct methods
.method constructor <init>(Lcom/android/systemui/power/PowerUI;)V
    .registers 2

    .line 234
    iput-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public init()V
    .registers 5

    .line 238
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    const-string v1, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 239
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.BATTERY_CHANGED"

    .line 240
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_OFF"

    .line 241
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.SCREEN_ON"

    .line 242
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "android.intent.action.USER_SWITCHED"

    .line 243
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    const-string v1, "meizu.intent.action.USB_CHARCH_TMEPERATURE_DIALOG"

    .line 245
    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 247
    iget-object v1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v2, v1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-static {v1}, Lcom/android/systemui/power/PowerUI;->access$000(Lcom/android/systemui/power/PowerUI;)Landroid/os/Handler;

    move-result-object v1

    const/4 v3, 0x0

    invoke-virtual {v2, p0, v0, v3, v1}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    return-void
.end method

.method public synthetic lambda$onReceive$0$PowerUI$Receiver()V
    .registers 2

    .line 256
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$1300(Lcom/android/systemui/power/PowerUI;)Landroid/os/PowerManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/PowerManager;->isPowerSaveMode()Z

    move-result v0

    if-eqz v0, :cond_15

    .line 257
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    :cond_15
    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 15

    .line 252
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p1

    .line 253
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onReceive: action="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PowerUI"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const-string v0, "android.os.action.POWER_SAVE_MODE_CHANGED"

    .line 254
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2c

    .line 255
    new-instance p1, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$r1RcZjs8DVXWaC4Afqm8W0WAvm8;

    invoke-direct {p1, p0}, Lcom/android/systemui/power/-$$Lambda$PowerUI$Receiver$r1RcZjs8DVXWaC4Afqm8W0WAvm8;-><init>(Lcom/android/systemui/power/PowerUI$Receiver;)V

    invoke-static {p1}, Lcom/android/settingslib/utils/ThreadUtils;->postOnBackgroundThread(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    goto/16 :goto_33b

    :cond_2c
    const-string v0, "android.intent.action.BATTERY_CHANGED"

    .line 260
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2df

    .line 261
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v0, p1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    const/16 v2, 0x64

    const-string v3, "level"

    .line 262
    invoke-virtual {p2, v3, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p1, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    .line 263
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    const/4 v3, 0x1

    const-string/jumbo v4, "status"

    .line 264
    invoke-virtual {p2, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    iput v4, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    .line 266
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    .line 267
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-string v5, "plugged"

    invoke-virtual {p2, v5, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Lcom/android/systemui/power/PowerUI;->access$102(Lcom/android/systemui/power/PowerUI;I)I

    .line 268
    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v4}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)I

    move-result v4

    .line 269
    iget-object v5, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const/4 v6, 0x0

    const-string v7, "invalid_charger"

    invoke-virtual {p2, v7, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result p2

    invoke-static {v5, p2}, Lcom/android/systemui/power/PowerUI;->access$202(Lcom/android/systemui/power/PowerUI;I)I

    .line 270
    iget-object p2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget-object v5, p2, Lcom/android/systemui/power/PowerUI;->mCurrentBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    iput-object v5, p2, Lcom/android/systemui/power/PowerUI;->mLastBatteryStateSnapshot:Lcom/android/systemui/power/BatteryStateSnapshot;

    .line 272
    invoke-static {p2}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)I

    move-result p2

    if-eqz p2, :cond_81

    move p2, v3

    goto :goto_82

    :cond_81
    move p2, v6

    :goto_82
    if-eqz p1, :cond_86

    move v5, v3

    goto :goto_87

    :cond_86
    move v5, v6

    .line 275
    :goto_87
    iget-object v7, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v7, v0}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v7

    .line 276
    iget-object v8, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v9, v8, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v8, v9}, Lcom/android/systemui/power/PowerUI;->access$300(Lcom/android/systemui/power/PowerUI;I)I

    move-result v8

    .line 279
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "buckets   ....."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$400(Lcom/android/systemui/power/PowerUI;)I

    move-result v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v10, " .. "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v11, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 280
    invoke-static {v11}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v11

    aget v11, v11, v6

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 281
    invoke-static {v10}, Lcom/android/systemui/power/PowerUI;->access$500(Lcom/android/systemui/power/PowerUI;)[I

    move-result-object v10

    aget v10, v10, v3

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 279
    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "level          "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " --> "

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v10, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v10, v10, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v1, v9}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 283
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "status         "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, v2, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v9, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 284
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "plugType       "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$100(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "invalidCharger "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)I

    move-result v2

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 286
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "bucket         "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "plugged        "

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p1

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v2, v0, Lcom/android/systemui/power/PowerUI;->mBatteryLevel:I

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$600(Lcom/android/systemui/power/PowerUI;)J

    move-result-wide v9

    invoke-interface {p1, v2, v8, v9, v10}, Lcom/android/systemui/power/PowerUI$WarningsUI;->update(IIJ)V

    if-nez v4, :cond_1ab

    .line 291
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    if-eqz p1, :cond_1ab

    const-string/jumbo p1, "showing invalid charger warning"

    .line 292
    invoke-static {v1, p1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 293
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showInvalidChargerWarning()V

    return-void

    :cond_1ab
    if-eqz v4, :cond_1bf

    .line 295
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$200(Lcom/android/systemui/power/PowerUI;)I

    move-result p1

    if-nez p1, :cond_1bf

    .line 296
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissInvalidChargerWarning()V

    goto :goto_1d5

    .line 297
    :cond_1bf
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->isInvalidChargerWarningShowing()Z

    move-result p1

    if-eqz p1, :cond_1d5

    .line 299
    sget-boolean p0, Lcom/android/systemui/power/PowerUI;->DEBUG:Z

    if-eqz p0, :cond_1d4

    const-string p0, "Bad Charger"

    .line 300
    invoke-static {v1, p0}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1d4
    return-void

    .line 306
    :cond_1d5
    :goto_1d5
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$800(Lcom/android/systemui/power/PowerUI;)Lcom/flyme/systemui/statusbar/policy/PowerSaveController;

    move-result-object p1

    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/PowerSaveController;->getPowerSaveMode()I

    move-result p1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_1e4

    move v0, v3

    goto :goto_1e5

    :cond_1e4
    move v0, v6

    :goto_1e5
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1ea

    move p1, v3

    goto :goto_1eb

    :cond_1ea
    move p1, v6

    .line 311
    :goto_1eb
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "onReceive: plugged="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",isPowerSaver="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",bucket="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",old="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",oldPlug="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",superPowerSaveEnabled="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v4, ",mBatteryStatus="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget v4, v4, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",unknow="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v4, ",notCharging="

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v4, 0x4

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    if-nez p2, :cond_2b2

    const/4 v2, -0x1

    if-eqz v0, :cond_24b

    if-ge v8, v2, :cond_2b2

    :cond_24b
    if-nez p1, :cond_2b2

    if-lt v8, v7, :cond_251

    if-eqz v5, :cond_2b2

    .line 320
    :cond_251
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget p1, p1, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v3, :cond_2b2

    if-ge v8, v2, :cond_2b2

    if-ge v8, v2, :cond_25c

    move v6, v3

    .line 327
    :cond_25c
    const-class p1, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-static {p1}, Lcom/android/systemui/Dependency;->get(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/flyme/systemui/statusbar/policy/GameModeController;

    invoke-interface {p1}, Lcom/flyme/systemui/statusbar/policy/GameModeController;->isDNDEnableAndInGameMode()Z

    move-result p1

    .line 329
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onReceive: cta="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v2, ",phoneIsInUse="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    .line 330
    invoke-static {v2}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)Z

    move-result v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 329
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    invoke-static {}, Lcom/flyme/systemui/statusbar/ext/FlymePluginFactory;->isCTA()Z

    move-result v0

    if-eqz v0, :cond_2a8

    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$900(Lcom/android/systemui/power/PowerUI;)Z

    move-result v0

    if-eqz v0, :cond_2a8

    const-string v0, "onReceive: CTA - play sound while level less than 10 and using phone"

    .line 333
    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    sget-object v1, Lcom/android/systemui/power/PowerUI$SoundType;->BATTERY_LOW:Lcom/android/systemui/power/PowerUI$SoundType;

    invoke-virtual {v0, v1}, Lcom/android/systemui/power/PowerUI;->playBatterySoundForCTA(Lcom/android/systemui/power/PowerUI$SoundType;)V

    .line 336
    :cond_2a8
    iget-object v0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {v0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object v0

    invoke-interface {v0, v6, p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->showLowBatteryWarning(ZZ)V

    goto :goto_2cc

    :cond_2b2
    if-nez p2, :cond_2c3

    if-le v8, v7, :cond_2b9

    if-lez v8, :cond_2b9

    goto :goto_2c3

    .line 340
    :cond_2b9
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->updateLowBatteryWarning()V

    goto :goto_2cc

    .line 338
    :cond_2c3
    :goto_2c3
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p1}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p1

    invoke-interface {p1}, Lcom/android/systemui/power/PowerUI$WarningsUI;->dismissLowBatteryWarning()V

    :goto_2cc
    if-nez p2, :cond_33b

    if-lt v8, v7, :cond_2d2

    if-eqz v5, :cond_33b

    .line 343
    :cond_2d2
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    iget p1, p0, Lcom/android/systemui/power/PowerUI;->mBatteryStatus:I

    if-eq p1, v3, :cond_33b

    const/4 p1, -0x2

    if-ge v8, p1, :cond_33b

    .line 347
    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$1000(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_33b

    :cond_2df
    const-string v0, "android.intent.action.SCREEN_OFF"

    .line 364
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f6

    .line 365
    iget-object p1, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;J)J

    .line 367
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$1100(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_33b

    :cond_2f6
    const-string v0, "android.intent.action.SCREEN_ON"

    .line 369
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_306

    .line 370
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    const-wide/16 p1, -0x1

    invoke-static {p0, p1, p2}, Lcom/android/systemui/power/PowerUI;->access$602(Lcom/android/systemui/power/PowerUI;J)J

    goto :goto_33b

    :cond_306
    const-string v0, "android.intent.action.USER_SWITCHED"

    .line 371
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_318

    .line 372
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$700(Lcom/android/systemui/power/PowerUI;)Lcom/android/systemui/power/PowerUI$WarningsUI;

    move-result-object p0

    invoke-interface {p0}, Lcom/android/systemui/power/PowerUI$WarningsUI;->userSwitched()V

    goto :goto_33b

    :cond_318
    const-string v0, "meizu.intent.action.USB_CHARCH_TMEPERATURE_DIALOG"

    .line 373
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_326

    .line 374
    iget-object p0, p0, Lcom/android/systemui/power/PowerUI$Receiver;->this$0:Lcom/android/systemui/power/PowerUI;

    invoke-static {p0}, Lcom/android/systemui/power/PowerUI;->access$1200(Lcom/android/systemui/power/PowerUI;)V

    goto :goto_33b

    .line 376
    :cond_326
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo p1, "unknown intent: "

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v1, p0}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_33b
    :goto_33b
    return-void
.end method
