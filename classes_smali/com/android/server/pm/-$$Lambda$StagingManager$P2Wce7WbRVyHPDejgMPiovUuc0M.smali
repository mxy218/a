.class public final synthetic Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/pm/StagingManager;

.field private final synthetic f$1:Lcom/android/server/pm/PackageInstallerSession;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/pm/StagingManager;Lcom/android/server/pm/PackageInstallerSession;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;->f$0:Lcom/android/server/pm/StagingManager;

    iput-object p2, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;->f$1:Lcom/android/server/pm/PackageInstallerSession;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;->f$0:Lcom/android/server/pm/StagingManager;

    iget-object v1, p0, Lcom/android/server/pm/-$$Lambda$StagingManager$P2Wce7WbRVyHPDejgMPiovUuc0M;->f$1:Lcom/android/server/pm/PackageInstallerSession;

    invoke-virtual {v0, v1}, Lcom/android/server/pm/StagingManager;->lambda$checkStateAndResume$11$StagingManager(Lcom/android/server/pm/PackageInstallerSession;)V

    return-void
.end method
