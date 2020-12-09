.class Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;
.super Ljava/lang/Object;
.source "RoleManagerService.java"

# interfaces
.implements Landroid/content/pm/PackageManagerInternal$DefaultDialerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/role/RoleManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "DefaultDialerProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/role/RoleManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/role/RoleManagerService;)V
    .registers 2

    .line 788
    iput-object p1, p0, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/role/RoleManagerService;Lcom/android/server/role/RoleManagerService$1;)V
    .registers 3

    .line 788
    invoke-direct {p0, p1}, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;-><init>(Lcom/android/server/role/RoleManagerService;)V

    return-void
.end method


# virtual methods
.method public getDefaultDialer(I)Ljava/lang/String;
    .registers 3

    .line 793
    iget-object v0, p0, Lcom/android/server/role/RoleManagerService$DefaultDialerProvider;->this$0:Lcom/android/server/role/RoleManagerService;

    invoke-static {v0, p1}, Lcom/android/server/role/RoleManagerService;->access$700(Lcom/android/server/role/RoleManagerService;I)Lcom/android/server/role/RoleUserState;

    move-result-object p1

    const-string v0, "android.app.role.DIALER"

    invoke-virtual {p1, v0}, Lcom/android/server/role/RoleUserState;->getRoleHolders(Ljava/lang/String;)Landroid/util/ArraySet;

    move-result-object p1

    invoke-static {p1}, Lcom/android/internal/util/CollectionUtils;->firstOrNull(Ljava/util/Collection;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method
