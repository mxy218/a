.class public final synthetic Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/role/RoleUserState;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Ljava/util/concurrent/CompletableFuture;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$0:Lcom/android/server/role/RoleUserState;

    iput-object p2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$1:Ljava/lang/String;

    iput-object p3, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$2:Ljava/util/concurrent/CompletableFuture;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 5

    iget-object v0, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$0:Lcom/android/server/role/RoleUserState;

    iget-object v1, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$1:Ljava/lang/String;

    iget-object v2, p0, Lcom/android/server/role/-$$Lambda$RoleManagerService$bWORjt1dBr7EfFhavgUePqPY2LM;->f$2:Ljava/util/concurrent/CompletableFuture;

    check-cast p1, Ljava/lang/Boolean;

    invoke-static {v0, v1, v2, p1}, Lcom/android/server/role/RoleManagerService;->lambda$performInitialGrantsIfNecessaryAsync$0(Lcom/android/server/role/RoleUserState;Ljava/lang/String;Ljava/util/concurrent/CompletableFuture;Ljava/lang/Boolean;)V

    return-void
.end method
