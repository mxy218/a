.class public final synthetic Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Landroid/content/Context;

.field private final synthetic f$1:Ljava/lang/String;

.field private final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$0:Landroid/content/Context;

    iput-object p2, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$1:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$0:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$1:Ljava/lang/String;

    iget-boolean p0, p0, Lcom/android/settings/applications/specialaccess/zenaccess/-$$Lambda$ZenAccessController$c33Kqh_fkLlRsd7SIUCcy8iTqe0;->f$2:Z

    invoke-static {v0, v1, p0}, Lcom/android/settings/applications/specialaccess/zenaccess/ZenAccessController;->lambda$setAccess$0(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method
