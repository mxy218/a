.class public final Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;
.super Ljava/lang/Object;
.source "TunablePadding_TunablePaddingService_Factory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;",
        ">;"
    }
.end annotation


# instance fields
.field private final tunerServiceProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)V"
        }
    .end annotation

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)",
            "Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;"
        }
    .end annotation

    .line 27
    new-instance v0, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Lcom/android/systemui/tuner/TunerService;",
            ">;)",
            "Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;"
        }
    .end annotation

    .line 22
    new-instance v0, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/tuner/TunerService;

    invoke-direct {v0, p0}, Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;-><init>(Lcom/android/systemui/tuner/TunerService;)V

    return-object v0
.end method


# virtual methods
.method public get()Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->tunerServiceProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 7
    invoke-virtual {p0}, Lcom/android/systemui/tuner/TunablePadding_TunablePaddingService_Factory;->get()Lcom/android/systemui/tuner/TunablePadding$TunablePaddingService;

    move-result-object p0

    return-object p0
.end method
