.class public final synthetic Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/connectivity/Tethering;

.field private final synthetic f$1:Landroid/net/ITetheringEventCallback;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/connectivity/Tethering;Landroid/net/ITetheringEventCallback;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;->f$0:Lcom/android/server/connectivity/Tethering;

    iput-object p2, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;->f$1:Landroid/net/ITetheringEventCallback;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;->f$0:Lcom/android/server/connectivity/Tethering;

    iget-object v1, p0, Lcom/android/server/connectivity/-$$Lambda$Tethering$-5WeutLnGVKFlJUG298UCM4G4Wk;->f$1:Landroid/net/ITetheringEventCallback;

    invoke-virtual {v0, v1}, Lcom/android/server/connectivity/Tethering;->lambda$registerTetheringEventCallback$3$Tethering(Landroid/net/ITetheringEventCallback;)V

    return-void
.end method
