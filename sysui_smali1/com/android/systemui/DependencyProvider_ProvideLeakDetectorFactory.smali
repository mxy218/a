.class public final Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideLeakDetectorFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/util/leak/LeakDetector;",
        ">;"
    }
.end annotation


# instance fields
.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;)V
    .registers 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->module:Lcom/android/systemui/DependencyProvider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;
    .registers 2

    .line 25
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;-><init>(Lcom/android/systemui/DependencyProvider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;
    .registers 1

    .line 21
    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->proxyProvideLeakDetector(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideLeakDetector(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;
    .registers 2

    .line 30
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider;->provideLeakDetector()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 29
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/util/leak/LeakDetector;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/util/leak/LeakDetector;
    .registers 1

    .line 17
    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->module:Lcom/android/systemui/DependencyProvider;

    invoke-static {p0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;)Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 8
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideLeakDetectorFactory;->get()Lcom/android/systemui/util/leak/LeakDetector;

    move-result-object p0

    return-object p0
.end method
