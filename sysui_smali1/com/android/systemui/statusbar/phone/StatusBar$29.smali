.class Lcom/android/systemui/statusbar/phone/StatusBar$29;
.super Landroid/database/ContentObserver;
.source "StatusBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/phone/StatusBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/phone/StatusBar;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/phone/StatusBar;Landroid/os/Handler;)V
    .registers 3

    .line 5972
    iput-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 5

    .line 5975
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    iget-object v0, p1, Lcom/android/systemui/SystemUI;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lockscreen_lunar_calender"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_13

    move v1, v2

    :cond_13
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4402(Lcom/android/systemui/statusbar/phone/StatusBar;Z)Z

    .line 5977
    iget-object p1, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p1}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4500(Lcom/android/systemui/statusbar/phone/StatusBar;)V

    .line 5978
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "mLunarEnable "

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Lcom/android/systemui/statusbar/phone/StatusBar$29;->this$0:Lcom/android/systemui/statusbar/phone/StatusBar;

    invoke-static {p0}, Lcom/android/systemui/statusbar/phone/StatusBar;->access$4400(Lcom/android/systemui/statusbar/phone/StatusBar;)Z

    move-result p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "StatusBar"

    invoke-static {p1, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method
