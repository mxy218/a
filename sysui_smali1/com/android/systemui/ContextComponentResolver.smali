.class public Lcom/android/systemui/ContextComponentResolver;
.super Ljava/lang/Object;
.source "ContextComponentResolver.java"

# interfaces
.implements Lcom/android/systemui/ContextComponentHelper;


# instance fields
.field private final mCreators:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Ljava/util/Map;)V
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Ljava/lang/Class<",
            "*>;",
            "Ljavax/inject/Provider<",
            "Ljava/lang/Object;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 32
    iput-object p1, p0, Lcom/android/systemui/ContextComponentResolver;->mCreators:Ljava/util/Map;

    return-void
.end method
