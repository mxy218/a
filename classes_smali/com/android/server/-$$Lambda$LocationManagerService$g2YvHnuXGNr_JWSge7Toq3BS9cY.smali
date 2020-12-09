.class public final synthetic Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/util/function/Consumer;


# instance fields
.field private final synthetic f$0:Lcom/android/server/LocationManagerService;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/LocationManagerService;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;->f$0:Lcom/android/server/LocationManagerService;

    return-void
.end method


# virtual methods
.method public final accept(Ljava/lang/Object;)V
    .registers 3

    iget-object v0, p0, Lcom/android/server/-$$Lambda$LocationManagerService$g2YvHnuXGNr_JWSge7Toq3BS9cY;->f$0:Lcom/android/server/LocationManagerService;

    check-cast p1, Landroid/os/PowerSaveState;

    invoke-virtual {v0, p1}, Lcom/android/server/LocationManagerService;->lambda$initializeLocked$7$LocationManagerService(Landroid/os/PowerSaveState;)V

    return-void
.end method
