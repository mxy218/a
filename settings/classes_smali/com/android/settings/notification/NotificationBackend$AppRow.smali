.class public Lcom/android/settings/notification/NotificationBackend$AppRow;
.super Lcom/android/settings/notification/NotificationBackend$Row;
.source "NotificationBackend.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/settings/notification/NotificationBackend;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AppRow"
.end annotation


# instance fields
.field public allowBubbles:Z

.field public banned:Z

.field public blockedChannelCount:I

.field public channelCount:I

.field public icon:Landroid/graphics/drawable/Drawable;

.field public label:Ljava/lang/CharSequence;

.field public lockedImportance:Z

.field public pkg:Ljava/lang/String;

.field public sentByApp:Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;

.field public sentByChannel:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Lcom/android/settings/notification/NotificationBackend$NotificationsSentState;",
            ">;"
        }
    .end annotation
.end field

.field public settingsIntent:Landroid/content/Intent;

.field public showBadge:Z

.field public systemApp:Z

.field public uid:I

.field public userId:I


# direct methods
.method public constructor <init>()V
    .registers 1

    .line 482
    invoke-direct {p0}, Lcom/android/settings/notification/NotificationBackend$Row;-><init>()V

    return-void
.end method