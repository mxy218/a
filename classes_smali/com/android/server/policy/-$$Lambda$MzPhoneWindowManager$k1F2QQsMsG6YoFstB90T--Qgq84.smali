.class public final synthetic Lcom/android/server/policy/-$$Lambda$MzPhoneWindowManager$k1F2QQsMsG6YoFstB90T--Qgq84;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/server/policy/MzPhoneWindowManager;


# direct methods
.method public synthetic constructor <init>(Lcom/android/server/policy/MzPhoneWindowManager;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/server/policy/-$$Lambda$MzPhoneWindowManager$k1F2QQsMsG6YoFstB90T--Qgq84;->f$0:Lcom/android/server/policy/MzPhoneWindowManager;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/server/policy/-$$Lambda$MzPhoneWindowManager$k1F2QQsMsG6YoFstB90T--Qgq84;->f$0:Lcom/android/server/policy/MzPhoneWindowManager;

    invoke-virtual {v0}, Lcom/android/server/policy/MzPhoneWindowManager;->lambda$systemBooted$0$MzPhoneWindowManager()V

    return-void
.end method
