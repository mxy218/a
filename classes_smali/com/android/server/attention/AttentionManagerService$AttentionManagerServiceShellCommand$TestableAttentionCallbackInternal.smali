.class Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;
.super Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;
.source "AttentionManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TestableAttentionCallbackInternal"
.end annotation


# instance fields
.field private mLastCallbackCode:I

.field final synthetic this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;


# direct methods
.method constructor <init>(Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;)V
    .registers 2

    .line 679
    iput-object p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->this$1:Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand;

    invoke-direct {p0}, Landroid/attention/AttentionManagerInternal$AttentionCallbackInternal;-><init>()V

    .line 680
    const/4 p1, -0x1

    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return-void
.end method


# virtual methods
.method public getLastCallbackCode()I
    .registers 2

    .line 697
    iget v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    return v0
.end method

.method public onFailure(I)V
    .registers 2

    .line 689
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 690
    return-void
.end method

.method public onSuccess(IJ)V
    .registers 4

    .line 684
    iput p1, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 685
    return-void
.end method

.method public reset()V
    .registers 2

    .line 693
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/server/attention/AttentionManagerService$AttentionManagerServiceShellCommand$TestableAttentionCallbackInternal;->mLastCallbackCode:I

    .line 694
    return-void
.end method
