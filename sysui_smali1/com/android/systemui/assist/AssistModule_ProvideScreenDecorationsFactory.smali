.class public final Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;
.super Ljava/lang/Object;
.source "AssistModule_ProvideScreenDecorationsFactory.java"

# interfaces
.implements Ldagger/internal/Factory;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ldagger/internal/Factory<",
        "Lcom/android/systemui/ScreenDecorations;",
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


# direct methods
.method public constructor <init>(Ljavax/inject/Provider;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)V"
        }
    .end annotation

    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput-object p1, p0, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->contextProvider:Ljavax/inject/Provider;

    return-void
.end method

.method public static create(Ljavax/inject/Provider;)Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;"
        }
    .end annotation

    .line 29
    new-instance v0, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;

    invoke-direct {v0, p0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;-><init>(Ljavax/inject/Provider;)V

    return-object v0
.end method

.method public static provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/ScreenDecorations;
    .registers 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/inject/Provider<",
            "Landroid/content/Context;",
            ">;)",
            "Lcom/android/systemui/ScreenDecorations;"
        }
    .end annotation

    .line 24
    invoke-interface {p0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/Context;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->proxyProvideScreenDecorations(Landroid/content/Context;)Lcom/android/systemui/ScreenDecorations;

    move-result-object p0

    return-object p0
.end method

.method public static proxyProvideScreenDecorations(Landroid/content/Context;)Lcom/android/systemui/ScreenDecorations;
    .registers 2

    .line 34
    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule;->provideScreenDecorations(Landroid/content/Context;)Lcom/android/systemui/ScreenDecorations;

    move-result-object p0

    const-string v0, "Cannot return null from a non-@Nullable @Provides method"

    .line 33
    invoke-static {p0, v0}, Ldagger/internal/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p0, Lcom/android/systemui/ScreenDecorations;

    return-object p0
.end method


# virtual methods
.method public get()Lcom/android/systemui/ScreenDecorations;
    .registers 1

    .line 20
    iget-object p0, p0, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->contextProvider:Ljavax/inject/Provider;

    invoke-static {p0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->provideInstance(Ljavax/inject/Provider;)Lcom/android/systemui/ScreenDecorations;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic get()Ljava/lang/Object;
    .registers 1

    .line 10
    invoke-virtual {p0}, Lcom/android/systemui/assist/AssistModule_ProvideScreenDecorationsFactory;->get()Lcom/android/systemui/ScreenDecorations;

    move-result-object p0

    return-object p0
.end method
