.class public final synthetic Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/NetworkManagementService$1;

.field private final synthetic f$1:Lcom/android/server/NetworkManagementService$RestrictIf;

.field private final synthetic f$2:Ljava/lang/String;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/NetworkManagementService$1;Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$0:Lcom/android/server/NetworkManagementService$1;

    iput-object p2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$1:Lcom/android/server/NetworkManagementService$RestrictIf;

    iput-object p3, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$2:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$0:Lcom/android/server/NetworkManagementService$1;

    iget-object v1, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$1:Lcom/android/server/NetworkManagementService$RestrictIf;

    iget-object v2, p0, Lcom/android/server/-$$Lambda$NetworkManagementService$1$cEe7AIGZabKkElb0YvNi_jszJbI;->f$2:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/NetworkManagementService$1;->lambda$onLinkPropertiesChanged$0$NetworkManagementService$1(Lcom/android/server/NetworkManagementService$RestrictIf;Ljava/lang/String;)V

    return-void
.end method