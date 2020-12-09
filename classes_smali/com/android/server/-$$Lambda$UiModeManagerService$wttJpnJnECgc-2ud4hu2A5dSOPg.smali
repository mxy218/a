.class public final synthetic Lcom/android/server/-$$Lambda$UiModeManagerService$wttJpnJnECgc-2ud4hu2A5dSOPg;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/UiModeManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/UiModeManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$wttJpnJnECgc-2ud4hu2A5dSOPg;->f$0:Lcom/android/server/UiModeManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/-$$Lambda$UiModeManagerService$wttJpnJnECgc-2ud4hu2A5dSOPg;->f$0:Lcom/android/server/UiModeManagerService;

    invoke-virtual {v0}, Lcom/android/server/UiModeManagerService;->lambda$onStart$2$UiModeManagerService()V

    return-void
.end method
