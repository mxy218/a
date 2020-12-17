.class Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/RemoteInputController$Callback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->setUpWithCallback(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$Callback;Lcom/android/systemui/statusbar/RemoteInputController$Delegate;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .registers 2

    .line 354
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public synthetic lambda$onRemoteInputSent$0$NotificationRemoteInputManager$3(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 3

    .line 366
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_13

    .line 367
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    iget-object p1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {p0, p1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    :cond_13
    return-void
.end method

.method public onRemoteInputSent(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V
    .registers 9

    .line 357
    sget-boolean v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->FORCE_REMOTE_INPUT_HISTORY:Z

    if-eqz v0, :cond_18

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    .line 358
    invoke-virtual {v0, v1}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->isNotificationKeptForRemoteInputHistory(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_18

    .line 359
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->key:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;->onSafeToRemove(Ljava/lang/String;)V

    goto :goto_32

    .line 360
    :cond_18
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mEntriesKeptForRemoteInputActive:Landroid/util/ArraySet;

    invoke-virtual {v0, p1}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    .line 365
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-static {v0}, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->access$500(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;

    invoke-direct {v1, p0, p1}, Lcom/android/systemui/statusbar/-$$Lambda$NotificationRemoteInputManager$3$4_sgjm8NgJs8c5OYAKLP29ZAlfg;-><init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)V

    const-wide/16 v2, 0xc8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 372
    :cond_32
    :goto_32
    :try_start_32
    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, v0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    invoke-virtual {v1}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationDirectReplied(Ljava/lang/String;)V

    .line 373
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    if-eqz v0, :cond_70

    .line 374
    iget-object v0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->remoteInputText:Ljava/lang/CharSequence;

    iget-object v1, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    iget-object v1, v1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;->originalText:Ljava/lang/CharSequence;

    .line 375
    invoke-static {v0, v1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_51

    const/4 v0, 0x1

    goto :goto_52

    :cond_51
    const/4 v0, 0x0

    :goto_52
    move v6, v0

    .line 377
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$3;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mBarService:Lcom/android/internal/statusbar/IStatusBarService;

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->notification:Landroid/service/notification/StatusBarNotification;

    .line 378
    invoke-virtual {p0}, Landroid/service/notification/StatusBarNotification;->getKey()Ljava/lang/String;

    move-result-object v2

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    iget v3, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;->index:I

    iget-object p0, p1, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;->editedSuggestionInfo:Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;

    iget-object v4, p0, Lcom/android/systemui/statusbar/notification/collection/NotificationEntry$EditedSuggestionInfo;->originalText:Ljava/lang/CharSequence;

    .line 382
    invoke-static {p1}, Lcom/android/systemui/statusbar/notification/logging/NotificationLogger;->getNotificationLocation(Lcom/android/systemui/statusbar/notification/collection/NotificationEntry;)Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;

    move-result-object p0

    .line 383
    invoke-virtual {p0}, Lcom/android/internal/statusbar/NotificationVisibility$NotificationLocation;->toMetricsEventEnum()I

    move-result v5

    .line 377
    invoke-interface/range {v1 .. v6}, Lcom/android/internal/statusbar/IStatusBarService;->onNotificationSmartReplySent(Ljava/lang/String;ILjava/lang/CharSequence;IZ)V
    :try_end_70
    .catch Landroid/os/RemoteException; {:try_start_32 .. :try_end_70} :catch_70

    :catch_70
    :cond_70
    return-void
.end method
