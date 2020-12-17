.class Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;
.super Landroid/database/ContentObserver;
.source "UserSwitcherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/policy/UserSwitcherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Landroid/os/Handler;)V
    .registers 3

    .line 552
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 6

    .line 554
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "lockscreenSimpleUserSwitcher"

    invoke-static {v0, v2, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    const/4 v2, 0x1

    if-eqz v0, :cond_14

    move v0, v2

    goto :goto_15

    :cond_14
    move v0, v1

    :goto_15
    invoke-static {p1, v0}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$002(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 556
    iget-object p1, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    iget-object v0, p1, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v3, "add_users_when_locked"

    invoke-static {v0, v3, v1}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_29

    move v1, v2

    :cond_29
    invoke-static {p1, v1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$1102(Lcom/android/systemui/statusbar/policy/UserSwitcherController;Z)Z

    .line 558
    iget-object p0, p0, Lcom/android/systemui/statusbar/policy/UserSwitcherController$5;->this$0:Lcom/android/systemui/statusbar/policy/UserSwitcherController;

    const/16 p1, -0x2710

    invoke-static {p0, p1}, Lcom/android/systemui/statusbar/policy/UserSwitcherController;->access$400(Lcom/android/systemui/statusbar/policy/UserSwitcherController;I)V

    return-void
.end method
