.class final Lcom/android/server/wm/CompatModePackages$CompatHandler;
.super Landroid/os/Handler;
.source "CompatModePackages.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wm/CompatModePackages;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "CompatHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wm/CompatModePackages;


# direct methods
.method public constructor <init>(Lcom/android/server/wm/CompatModePackages;Landroid/os/Looper;)V
    .registers 4

    .line 73
    iput-object p1, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    .line 74
    const/4 p1, 0x0

    const/4 v0, 0x1

    invoke-direct {p0, p2, p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 75
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 3

    .line 79
    iget p1, p1, Landroid/os/Message;->what:I

    const/16 v0, 0x12c

    if-eq p1, v0, :cond_7

    goto :goto_c

    .line 81
    :cond_7
    iget-object p1, p0, Lcom/android/server/wm/CompatModePackages$CompatHandler;->this$0:Lcom/android/server/wm/CompatModePackages;

    invoke-static {p1}, Lcom/android/server/wm/CompatModePackages;->access$000(Lcom/android/server/wm/CompatModePackages;)V

    .line 84
    :goto_c
    return-void
.end method
