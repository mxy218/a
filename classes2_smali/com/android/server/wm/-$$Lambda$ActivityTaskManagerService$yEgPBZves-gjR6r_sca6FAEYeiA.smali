.class public final synthetic Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/wm/ActivityTaskManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/wm/ActivityTaskManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/wm/-$$Lambda$ActivityTaskManagerService$yEgPBZves-gjR6r_sca6FAEYeiA;->f$0:Lcom/android/server/wm/ActivityTaskManagerService;

    invoke-virtual {v0}, Lcom/android/server/wm/ActivityTaskManagerService;->lambda$scheduleAppGcsLocked$8$ActivityTaskManagerService()V

    return-void
.end method
