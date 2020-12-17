.class Lcom/android/server/policy/gesture/GestureSwitchController$2;
.super Landroid/database/ContentObserver;
.source "GestureSwitchController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/gesture/GestureSwitchController;->registerSettingObserver()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/gesture/GestureSwitchController;


# direct methods
.method constructor <init>(Lcom/android/server/policy/gesture/GestureSwitchController;Landroid/os/Handler;)V
    .registers 3
    .param p1, "this$0"  # Lcom/android/server/policy/gesture/GestureSwitchController;
    .param p2, "x0"  # Landroid/os/Handler;

    .line 68
    iput-object p1, p0, Lcom/android/server/policy/gesture/GestureSwitchController$2;->this$0:Lcom/android/server/policy/gesture/GestureSwitchController;

    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .registers 3
    .param p1, "selfChange"  # Z

    .line 71
    iget-object v0, p0, Lcom/android/server/policy/gesture/GestureSwitchController$2;->this$0:Lcom/android/server/policy/gesture/GestureSwitchController;

    invoke-static {v0}, Lcom/android/server/policy/gesture/GestureSwitchController;->access$100(Lcom/android/server/policy/gesture/GestureSwitchController;)V

    .line 72
    return-void
.end method
