.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Z

.field private final synthetic f$2:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;ZLjava/util/List;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-boolean p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$1:Z

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$2:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-boolean v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$1:Z

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$6_Yp7BSB4TgtrWSoFlODKgHIvZY;->f$2:Ljava/util/List;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$processInstallRequestsAsync$14$PackageManagerService(ZLjava/util/List;)V

    return-void
.end method
