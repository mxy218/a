.class abstract Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;
.super Landroid/content/pm/IPinItemRequest$Stub;
.source "ShortcutRequestPinProcessor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/pm/ShortcutRequestPinProcessor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x40a
    name = "PinItemRequestInner"
.end annotation


# instance fields
.field private mAccepted:Z
    .annotation build Lcom/android/internal/annotations/GuardedBy;
        value = {
            "this"
        }
    .end annotation
.end field

.field private final mLauncherUid:I

.field protected final mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

.field private final mResultIntent:Landroid/content/IntentSender;


# direct methods
.method private constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V
    .registers 4

    .line 61
    invoke-direct {p0}, Landroid/content/pm/IPinItemRequest$Stub;-><init>()V

    .line 62
    iput-object p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    .line 63
    iput-object p2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    .line 64
    iput p3, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    .line 65
    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;ILcom/android/server/pm/ShortcutRequestPinProcessor$1;)V
    .registers 5

    .line 52
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;-><init>(Lcom/android/server/pm/ShortcutRequestPinProcessor;Landroid/content/IntentSender;I)V

    return-void
.end method

.method private isCallerValid()Z
    .registers 3

    .line 87
    iget-object v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mLauncherUid:I

    invoke-virtual {v0, v1}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->isCallerUid(I)Z

    move-result v0

    return v0
.end method


# virtual methods
.method public accept(Landroid/os/Bundle;)Z
    .registers 5

    .line 109
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    if-eqz v0, :cond_44

    .line 112
    const/4 v0, 0x0

    .line 113
    if-eqz p1, :cond_20

    .line 115
    :try_start_9
    invoke-virtual {p1}, Landroid/os/Bundle;->size()I

    .line 116
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v0, p1}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object v0
    :try_end_15
    .catch Ljava/lang/RuntimeException; {:try_start_9 .. :try_end_15} :catch_16

    .line 119
    goto :goto_20

    .line 117
    :catch_16
    move-exception p1

    .line 118
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "options cannot be unparceled"

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    .line 121
    :cond_20
    :goto_20
    monitor-enter p0

    .line 122
    :try_start_21
    iget-boolean p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez p1, :cond_39

    .line 125
    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    .line 126
    monitor-exit p0
    :try_end_29
    .catchall {:try_start_21 .. :try_end_29} :catchall_41

    .line 129
    invoke-virtual {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->tryAccept()Z

    move-result v1

    if-eqz v1, :cond_37

    .line 130
    iget-object v1, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mProcessor:Lcom/android/server/pm/ShortcutRequestPinProcessor;

    iget-object v2, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mResultIntent:Landroid/content/IntentSender;

    invoke-virtual {v1, v2, v0}, Lcom/android/server/pm/ShortcutRequestPinProcessor;->sendResultIntent(Landroid/content/IntentSender;Landroid/content/Intent;)V

    .line 131
    return p1

    .line 133
    :cond_37
    const/4 p1, 0x0

    return p1

    .line 123
    :cond_39
    :try_start_39
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "accept() called already"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 126
    :catchall_41
    move-exception p1

    monitor-exit p0
    :try_end_43
    .catchall {:try_start_39 .. :try_end_43} :catchall_41

    throw p1

    .line 110
    :cond_44
    new-instance p1, Ljava/lang/SecurityException;

    const-string v0, "Calling uid mismatch"

    invoke-direct {p1, v0}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public getAppWidgetProviderInfo()Landroid/appwidget/AppWidgetProviderInfo;
    .registers 2

    .line 74
    const/4 v0, 0x0

    return-object v0
.end method

.method public getExtras()Landroid/os/Bundle;
    .registers 2

    .line 79
    const/4 v0, 0x0

    return-object v0
.end method

.method public getShortcutInfo()Landroid/content/pm/ShortcutInfo;
    .registers 2

    .line 69
    const/4 v0, 0x0

    return-object v0
.end method

.method public isValid()Z
    .registers 3

    .line 92
    invoke-direct {p0}, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->isCallerValid()Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_8

    .line 93
    return v1

    .line 97
    :cond_8
    monitor-enter p0

    .line 98
    :try_start_9
    iget-boolean v0, p0, Lcom/android/server/pm/ShortcutRequestPinProcessor$PinItemRequestInner;->mAccepted:Z

    if-nez v0, :cond_e

    const/4 v1, 0x1

    :cond_e
    monitor-exit p0

    return v1

    .line 99
    :catchall_10
    move-exception v0

    monitor-exit p0
    :try_end_12
    .catchall {:try_start_9 .. :try_end_12} :catchall_10

    throw v0
.end method

.method protected tryAccept()Z
    .registers 2

    .line 138
    const/4 v0, 0x1

    return v0
.end method
