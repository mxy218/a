.class public final synthetic Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

.field private final synthetic f$1:Ljava/util/List;


# direct methods
.method public synthetic constructor <init>(Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;Ljava/util/List;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;->f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    iput-object p2, p0, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;->f$1:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 2

    iget-object v0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;->f$0:Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;

    iget-object p0, p0, Lcom/android/settings/fuelgauge/batterytip/actions/-$$Lambda$OpenRestrictAppFragmentAction$EtKh55lPJMI0rxkM0QFArF_zK8E;->f$1:Ljava/util/List;

    invoke-virtual {v0, p0}, Lcom/android/settings/fuelgauge/batterytip/actions/OpenRestrictAppFragmentAction;->lambda$handlePositiveAction$0$OpenRestrictAppFragmentAction(Ljava/util/List;)V

    return-void
.end method
