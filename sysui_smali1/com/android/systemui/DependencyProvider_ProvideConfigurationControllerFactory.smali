.class public final Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;
.super Ljava/lang/Object;
.source "DependencyProvider_ProvideConfigurationControllerFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/statusbar/policy/ConfigurationController;",
        ">;"
    }
.end annotation


# instance fields
.field private final contextProvider:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private final module:Lcom/android/systemui/DependencyProvider;


# direct methods
.method public constructor <init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 17
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 18
    iput-object p1, p0, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    .line 19
    iput-object p2, p0, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;"
        }
    .end annotation

    .line 34
    new-instance v0, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;

    invoke-direct {v0, p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;-><init>(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/systemui/DependencyProvider;",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/statusbar/policy/ConfigurationController;"
        }
    .end annotation

    .line 29
    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/content/Context;

    invoke-static {p0, p1}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->proxyProvideConfigurationController(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideConfigurationController(Lcom/android/systemui/DependencyProvider;Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .registers 2

    .line 40
    invoke-virtual {p0, p1}, Lcom/android/systemui/DependencyProvider;->provideConfigurationController(Landroid/content/Context;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p0

    const-string p1, "Cannot return null from a non-@Nullable @Provides method"

    .line 39
    invoke-static {p0, p1}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/statusbar/policy/ConfigurationController;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/statusbar/policy/ConfigurationController;
    .registers 2

    .line 24
    iget-object v0, p0, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->module:Lcom/android/systemui/DependencyProvider;

    iget-object p0, p0, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {v0, p0}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->provideInstance(Lcom/android/systemui/DependencyProvider;Ljavax/inject/Provider;)Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/DependencyProvider_ProvideConfigurationControllerFactory;->get()Lcom/android/systemui/statusbar/policy/ConfigurationController;

    move-result-object p0

    return-object p0
.end method
