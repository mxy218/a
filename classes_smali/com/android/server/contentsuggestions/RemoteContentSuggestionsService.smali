.class public Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;
.super Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;
.source "RemoteContentSuggestionsService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService<",
        "Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;",
        "Landroid/service/contentsuggestions/IContentSuggestionsService;",
        ">;"
    }
.end annotation


# static fields
.field private static final TIMEOUT_REMOTE_REQUEST_MILLIS:J = 0x7d0L


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/content/ComponentName;ILcom/android/server/contentsuggestions/RemoteContentSuggestionsService$Callbacks;ZZ)V
    .registers 17

    .line 49
    nop

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getMainThreadHandler()Landroid/os/Handler;

    move-result-object v6

    .line 51
    if-eqz p5, :cond_a

    const/high16 v0, 0x400000

    goto :goto_b

    :cond_a
    const/4 v0, 0x0

    :goto_b
    move v7, v0

    const/4 v9, 0x1

    .line 49
    const-string v2, "android.service.contentsuggestions.ContentSuggestionsService"

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move/from16 v8, p6

    invoke-direct/range {v0 .. v9}, Lcom/android/internal/infra/AbstractMultiplePendingRequestsRemoteService;-><init>(Landroid/content/Context;Ljava/lang/String;Landroid/content/ComponentName;ILcom/android/internal/infra/AbstractRemoteService$VultureCallback;Landroid/os/Handler;IZI)V

    .line 53
    return-void
.end method

.method static synthetic lambda$classifyContentSelections$2(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 86
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    return-void
.end method

.method static synthetic lambda$notifyInteraction$3(Ljava/lang/String;Landroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 90
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$provideContextImage$0(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 72
    invoke-interface {p4, p0, p1, p2, p3}, Landroid/service/contentsuggestions/IContentSuggestionsService;->provideContextImage(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    return-void
.end method

.method static synthetic lambda$suggestContentSelections$1(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;Landroid/service/contentsuggestions/IContentSuggestionsService;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 80
    invoke-interface {p2, p0, p1}, Landroid/service/contentsuggestions/IContentSuggestionsService;->suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    return-void
.end method


# virtual methods
.method classifyContentSelections(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V
    .registers 4

    .line 86
    new-instance v0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$eoGnQ2MDLLnW1UBX6wxNE1VBLAk;-><init>(Landroid/app/contentsuggestions/ClassificationsRequest;Landroid/app/contentsuggestions/IClassificationsCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 87
    return-void
.end method

.method protected getRemoteRequestMillis()J
    .registers 3

    .line 67
    const-wide/16 v0, 0x7d0

    return-wide v0
.end method

.method protected bridge synthetic getServiceInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;

    move-result-object p1

    return-object p1
.end method

.method protected getServiceInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;
    .registers 2

    .line 57
    invoke-static {p1}, Landroid/service/contentsuggestions/IContentSuggestionsService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/service/contentsuggestions/IContentSuggestionsService;

    move-result-object p1

    return-object p1
.end method

.method protected getTimeoutIdleBindMillis()J
    .registers 3

    .line 62
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method notifyInteraction(Ljava/lang/String;Landroid/os/Bundle;)V
    .registers 4

    .line 90
    new-instance v0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$Enqw46SYVKFK9F2xX4qUcIu5_3I;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 91
    return-void
.end method

.method provideContextImage(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V
    .registers 6

    .line 72
    new-instance v0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$VKh1DoMPNSPjPfnVGdsInmxuqzc;-><init>(ILandroid/graphics/GraphicBuffer;ILandroid/os/Bundle;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 74
    return-void
.end method

.method suggestContentSelections(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V
    .registers 4

    .line 79
    new-instance v0, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;

    invoke-direct {v0, p1, p2}, Lcom/android/server/contentsuggestions/-$$Lambda$RemoteContentSuggestionsService$yUTbcaYlZCYTmagCkNJ3i2VCkY4;-><init>(Landroid/app/contentsuggestions/SelectionsRequest;Landroid/app/contentsuggestions/ISelectionsCallback;)V

    invoke-virtual {p0, v0}, Lcom/android/server/contentsuggestions/RemoteContentSuggestionsService;->scheduleAsyncRequest(Lcom/android/internal/infra/AbstractRemoteService$AsyncRequest;)V

    .line 81
    return-void
.end method
