.class public final synthetic Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/PackageManagerService;

.field private final synthetic f$1:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

.field private final synthetic f$2:Landroid/content/IntentSender;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/PackageManagerService;Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Landroid/content/IntentSender;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$0:Lcom/android/server/pm/PackageManagerService;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$1:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iput-object p3, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$2:Landroid/content/IntentSender;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$0:Lcom/android/server/pm/PackageManagerService;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$1:Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;

    iget-object v2, p0, Lcom/android/server/pm/-$$Lambda$PackageManagerService$5bfG3NWHFMyAy9KctvBO9i2pciI;->f$2:Landroid/content/IntentSender;

    invoke-virtual {v0, v1, v2}, Lcom/android/server/pm/PackageManagerService;->lambda$installExistingPackageAsUser$11$PackageManagerService(Lcom/android/server/pm/PackageManagerService$PackageInstalledInfo;Landroid/content/IntentSender;)V

    return-void
.end method
