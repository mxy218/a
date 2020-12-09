.class final Lcom/android/server/autofill/AutofillManagerService$LocalService;
.super Landroid/view/autofill/AutofillManagerInternal;
.source "AutofillManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/autofill/AutofillManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "LocalService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/autofill/AutofillManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/autofill/AutofillManagerService;)V
    .registers 2

    .line 782
    iput-object p1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-direct {p0}, Landroid/view/autofill/AutofillManagerInternal;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/autofill/AutofillManagerService;Lcom/android/server/autofill/AutofillManagerService$1;)V
    .registers 3

    .line 782
    invoke-direct {p0, p1}, Lcom/android/server/autofill/AutofillManagerService$LocalService;-><init>(Lcom/android/server/autofill/AutofillManagerService;)V

    return-void
.end method


# virtual methods
.method public getAutofillOptions(Ljava/lang/String;JI)Landroid/content/AutofillOptions;
    .registers 7

    .line 798
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->verbose:Z

    if-eqz v0, :cond_8

    .line 799
    const/4 v0, 0x6

    goto :goto_11

    .line 801
    :cond_8
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-boolean v0, v0, Lcom/android/server/autofill/AutofillManagerService;->debug:Z

    if-eqz v0, :cond_10

    .line 802
    const/4 v0, 0x2

    goto :goto_11

    .line 804
    :cond_10
    const/4 v0, 0x0

    .line 806
    :goto_11
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1}, Lcom/android/server/autofill/AutofillManagerService;->access$700(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;

    move-result-object v1

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/android/server/autofill/AutofillManagerService$AutofillCompatState;->isCompatibilityModeRequested(Ljava/lang/String;JI)Z

    move-result p2

    .line 808
    new-instance p3, Landroid/content/AutofillOptions;

    invoke-direct {p3, v0, p2}, Landroid/content/AutofillOptions;-><init>(IZ)V

    .line 809
    iget-object p2, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    iget-object p2, p2, Lcom/android/server/autofill/AutofillManagerService;->mAugmentedAutofillState:Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;

    invoke-virtual {p2, p3, p4, p1}, Lcom/android/server/autofill/AutofillManagerService$AugmentedAutofillState;->injectAugmentedAutofillInfo(Landroid/content/AutofillOptions;ILjava/lang/String;)V

    .line 810
    return-object p3
.end method

.method public isAugmentedAutofillServiceForUser(II)Z
    .registers 5

    .line 815
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$800(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 816
    :try_start_7
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v1, p2}, Lcom/android/server/autofill/AutofillManagerService;->access$900(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object p2

    check-cast p2, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 817
    if-eqz p2, :cond_17

    .line 818
    invoke-virtual {p2, p1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->isAugmentedAutofillServiceForUserLocked(I)Z

    move-result p1

    monitor-exit v0

    return p1

    .line 820
    :cond_17
    monitor-exit v0

    .line 821
    const/4 p1, 0x0

    return p1

    .line 820
    :catchall_1a
    move-exception p1

    monitor-exit v0
    :try_end_1c
    .catchall {:try_start_7 .. :try_end_1c} :catchall_1a

    throw p1
.end method

.method public onBackKeyPressed()V
    .registers 4

    .line 785
    sget-boolean v0, Lcom/android/server/autofill/Helper;->sDebug:Z

    if-eqz v0, :cond_c

    const-string v0, "AutofillManagerService"

    const-string/jumbo v1, "onBackKeyPressed()"

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 786
    :cond_c
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$300(Lcom/android/server/autofill/AutofillManagerService;)Lcom/android/server/autofill/ui/AutoFillUI;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/autofill/ui/AutoFillUI;->hideAll(Lcom/android/server/autofill/ui/AutoFillUI$AutoFillUiCallback;)V

    .line 787
    iget-object v0, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    invoke-static {v0}, Lcom/android/server/autofill/AutofillManagerService;->access$500(Lcom/android/server/autofill/AutofillManagerService;)Ljava/lang/Object;

    move-result-object v0

    monitor-enter v0

    .line 788
    :try_start_1d
    iget-object v1, p0, Lcom/android/server/autofill/AutofillManagerService$LocalService;->this$0:Lcom/android/server/autofill/AutofillManagerService;

    .line 789
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/autofill/AutofillManagerService;->access$600(Lcom/android/server/autofill/AutofillManagerService;I)Lcom/android/server/infra/AbstractPerUserSystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/autofill/AutofillManagerServiceImpl;

    .line 790
    invoke-virtual {v1}, Lcom/android/server/autofill/AutofillManagerServiceImpl;->onBackKeyPressed()V

    .line 791
    monitor-exit v0

    .line 792
    return-void

    .line 791
    :catchall_2e
    move-exception v1

    monitor-exit v0
    :try_end_30
    .catchall {:try_start_1d .. :try_end_30} :catchall_2e

    throw v1
.end method
