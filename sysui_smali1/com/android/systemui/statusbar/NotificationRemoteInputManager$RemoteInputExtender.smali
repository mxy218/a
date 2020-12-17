.class public abstract Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;
.super Ljava/lang/Object;
.source "NotificationRemoteInputManager.java"

# interfaces
.implements Lcom/android/systemui/statusbar/NotificationLifetimeExtender;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/systemui/statusbar/NotificationRemoteInputManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "RemoteInputExtender"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;


# direct methods
.method protected constructor <init>(Lcom/android/systemui/statusbar/NotificationRemoteInputManager;)V
    .registers 2

    .line 643
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public setCallback(Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;)V
    .registers 3

    .line 646
    iget-object p0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager$RemoteInputExtender;->this$0:Lcom/android/systemui/statusbar/NotificationRemoteInputManager;

    iget-object v0, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    if-nez v0, :cond_8

    .line 647
    iput-object p1, p0, Lcom/android/systemui/statusbar/NotificationRemoteInputManager;->mNotificationLifetimeFinishedCallback:Lcom/android/systemui/statusbar/NotificationLifetimeExtender$NotificationSafeToRemoveCallback;

    :cond_8
    return-void
.end method
