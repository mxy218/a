.class final Lcom/android/server/display/BrightnessTracker$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "BrightnessTracker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/BrightnessTracker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/BrightnessTracker;


# direct methods
.method public constructor <init>(Lcom/android/server/display/BrightnessTracker;Landroid/os/Handler;)V
    .registers 3

    .line 918
    iput-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    .line 919
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 920
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .registers 3

    .line 927
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$800(Lcom/android/server/display/BrightnessTracker;)Lcom/android/server/display/BrightnessTracker$Injector;

    move-result-object p1

    iget-object p2, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p2}, Lcom/android/server/display/BrightnessTracker;->access$700(Lcom/android/server/display/BrightnessTracker;)Landroid/content/ContentResolver;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/android/server/display/BrightnessTracker$Injector;->isBrightnessModeAutomatic(Landroid/content/ContentResolver;)Z

    move-result p1

    if-eqz p1, :cond_21

    .line 928
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x3

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    goto :goto_2f

    .line 930
    :cond_21
    iget-object p1, p0, Lcom/android/server/display/BrightnessTracker$SettingsObserver;->this$0:Lcom/android/server/display/BrightnessTracker;

    invoke-static {p1}, Lcom/android/server/display/BrightnessTracker;->access$900(Lcom/android/server/display/BrightnessTracker;)Landroid/os/Handler;

    move-result-object p1

    const/4 p2, 0x2

    invoke-virtual {p1, p2}, Landroid/os/Handler;->obtainMessage(I)Landroid/os/Message;

    move-result-object p1

    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 932
    :goto_2f
    return-void
.end method
