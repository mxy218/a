.class Lcom/android/server/wm/UnknownAppVisibilityController;
.super Ljava/lang/Object;
.source "UnknownAppVisibilityController.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "WindowManager"

.field private static final UNKNOWN_STATE_WAITING_RELAYOUT:I = 0x2

.field private static final UNKNOWN_STATE_WAITING_RESUME:I = 0x1

.field private static final UNKNOWN_STATE_WAITING_VISIBILITY_UPDATE:I = 0x3


# instance fields
.field private final mDisplayContent:Lcom/android/server/wm/DisplayContent;

.field private final mService:Lcom/android/server/wm/WindowManagerService;

.field private final mUnknownApps:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Lcom/android/server/wm/AppWindowToken;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/android/server/wm/WindowManagerService;Lcom/android/server/wm/DisplayContent;)V
    .registers 4

    .line 65
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 66
    iput-object p1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    .line 67
    iput-object p2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mDisplayContent:Lcom/android/server/wm/DisplayContent;

    .line 68
    return-void
.end method

.method public static synthetic lambda$FYhcjOhYWVp6HX5hr3GGaPg67Gc(Lcom/android/server/wm/UnknownAppVisibilityController;)V
    .registers 1

    invoke-direct {p0}, Lcom/android/server/wm/UnknownAppVisibilityController;->notifyVisibilitiesUpdated()V

    return-void
.end method

.method private notifyVisibilitiesUpdated()V
    .registers 6

    .line 143
    nop

    .line 144
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    const/4 v2, 0x0

    :goto_a
    if-ltz v0, :cond_24

    .line 145
    iget-object v3, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v3, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/4 v4, 0x3

    if-ne v3, v4, :cond_21

    .line 146
    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->removeAt(I)Ljava/lang/Object;

    .line 147
    move v2, v1

    .line 144
    :cond_21
    add-int/lit8 v0, v0, -0x1

    goto :goto_a

    .line 150
    :cond_24
    if-eqz v2, :cond_2d

    .line 151
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    iget-object v0, v0, Lcom/android/server/wm/WindowManagerService;->mWindowPlacerLocked:Lcom/android/server/wm/WindowSurfacePlacer;

    invoke-virtual {v0}, Lcom/android/server/wm/WindowSurfacePlacer;->performSurfacePlacement()V

    .line 153
    :cond_2d
    return-void
.end method


# virtual methods
.method allResolved()Z
    .registers 2

    .line 71
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    return v0
.end method

.method appRemovedOrHidden(Lcom/android/server/wm/AppWindowToken;)V
    .registers 3

    .line 94
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    .line 95
    return-void
.end method

.method clear()V
    .registers 2

    .line 75
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->clear()V

    .line 76
    return-void
.end method

.method dump(Ljava/io/PrintWriter;Ljava/lang/String;)V
    .registers 6

    .line 156
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 157
    return-void

    .line 159
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "Unknown visibilities:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Landroid/util/ArrayMap;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    :goto_25
    if-ltz v0, :cond_55

    .line 161
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "  app="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " state="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 162
    invoke-virtual {v2, v0}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 161
    invoke-virtual {p1, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 160
    add-int/lit8 v0, v0, -0x1

    goto :goto_25

    .line 164
    :cond_55
    return-void
.end method

.method getDebugMessage()Ljava/lang/String;
    .registers 4

    .line 79
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 80
    iget-object v1, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v1}, Landroid/util/ArrayMap;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    :goto_d
    if-ltz v1, :cond_35

    .line 81
    const-string v2, "app="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->keyAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 82
    const-string v2, " state="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v2, v1}, Landroid/util/ArrayMap;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 83
    if-eqz v1, :cond_32

    .line 84
    const/16 v2, 0x20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 80
    :cond_32
    add-int/lit8 v1, v1, -0x1

    goto :goto_d

    .line 87
    :cond_35
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method notifyAppResumedFinished(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    .line 112
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_21

    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    .line 113
    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_21

    .line 117
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v1, 0x2

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 119
    :cond_21
    return-void
.end method

.method notifyLaunched(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    .line 105
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    return-void
.end method

.method notifyRelayouted(Lcom/android/server/wm/AppWindowToken;)V
    .registers 4

    .line 125
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    .line 126
    return-void

    .line 131
    :cond_9
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 132
    const/4 v1, 0x2

    if-ne v0, v1, :cond_34

    .line 133
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mUnknownApps:Landroid/util/ArrayMap;

    const/4 v1, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    iget-object v0, p0, Lcom/android/server/wm/UnknownAppVisibilityController;->mService:Lcom/android/server/wm/WindowManagerService;

    new-instance v1, Lcom/android/server/wm/-$$Lambda$UnknownAppVisibilityController$FYhcjOhYWVp6HX5hr3GGaPg67Gc;

    invoke-direct {v1, p0}, Lcom/android/server/wm/-$$Lambda$UnknownAppVisibilityController$FYhcjOhYWVp6HX5hr3GGaPg67Gc;-><init>(Lcom/android/server/wm/UnknownAppVisibilityController;)V

    .line 135
    invoke-virtual {p1}, Lcom/android/server/wm/AppWindowToken;->getDisplayContent()Lcom/android/server/wm/DisplayContent;

    move-result-object p1

    invoke-virtual {p1}, Lcom/android/server/wm/DisplayContent;->getDisplayId()I

    move-result p1

    .line 134
    invoke-virtual {v0, v1, p1}, Lcom/android/server/wm/WindowManagerService;->notifyKeyguardFlagsChanged(Ljava/lang/Runnable;I)V

    .line 137
    :cond_34
    return-void
.end method
