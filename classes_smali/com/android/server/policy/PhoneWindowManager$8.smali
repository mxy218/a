.class Lcom/android/server/policy/PhoneWindowManager$8;
.super Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/PhoneWindowManager;->init(Landroid/content/Context;Landroid/view/IWindowManager;Lcom/android/server/policy/WindowManagerPolicy$WindowManagerFuncs;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method constructor <init>(Lcom/android/server/policy/PhoneWindowManager;)V
    .registers 2

    .line 2228
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Lcom/android/server/wm/WindowManagerInternal$AppTransitionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onAppTransitionCancelledLocked(I)V
    .registers 5

    .line 2237
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    const-wide/16 v1, 0x0

    invoke-static {v0, p1, v1, v2}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;IJ)I

    .line 2238
    return-void
.end method

.method public onAppTransitionStartingLocked(IJJJ)I
    .registers 8

    .line 2232
    iget-object p4, p0, Lcom/android/server/policy/PhoneWindowManager$8;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-static {p4, p1, p2, p3}, Lcom/android/server/policy/PhoneWindowManager;->access$4000(Lcom/android/server/policy/PhoneWindowManager;IJ)I

    move-result p1

    return p1
.end method
