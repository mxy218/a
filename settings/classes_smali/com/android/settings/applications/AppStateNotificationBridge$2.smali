.class Lcom/android/settings/applications/AppStateNotificationBridge$2;
.super Ljava/lang/Object;
.source "AppStateNotificationBridge.java"

# interfaces
.implements Lcom/android/settingslib/applications/ApplicationsState$AppFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/applications/AppStateNotificationBridge;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .registers 1

    .line 259
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public filterApp(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Z
    .registers 2

    .line 266
    invoke-static {p1}, Lcom/android/settings/applications/AppStateNotificationBridge;->access$000(Lcom/android/settingslib/applications/ApplicationsState$AppEntry;)Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;

    move-result-object p0

    const/4 p1, 0x0

    if-eqz p0, :cond_c

    .line 268
    iget p0, p0, Lcom/android/settings/applications/AppStateNotificationBridge$NotificationsSentState;->sentCount:I

    if-eqz p0, :cond_c

    const/4 p1, 0x1

    :cond_c
    return p1
.end method

.method public init()V
    .registers 1

    return-void
.end method
