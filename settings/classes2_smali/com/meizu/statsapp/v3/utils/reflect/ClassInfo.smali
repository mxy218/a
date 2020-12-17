.class public Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;
.super Ljava/lang/Object;
.source "ClassInfo.java"


# instance fields
.field public final fields:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation
.end field

.field public final mClass:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field public final methods:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Ljava/lang/reflect/Method;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;Ljava/lang/String;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 17
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    .line 18
    new-instance p2, Ljava/util/HashMap;

    invoke-direct {p2}, Ljava/util/HashMap;-><init>()V

    iput-object p2, p0, Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;->fields:Ljava/util/HashMap;

    .line 19
    iput-object p1, p0, Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;->mClass:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public addCachedMethod(Ljava/lang/String;Ljava/lang/reflect/Method;)V
    .registers 3

    .line 23
    iget-object p0, p0, Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    invoke-virtual {p0, p1, p2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public getCachedMethod(Ljava/lang/String;)Ljava/lang/reflect/Method;
    .registers 2

    .line 27
    iget-object p0, p0, Lcom/meizu/statsapp/v3/utils/reflect/ClassInfo;->methods:Ljava/util/HashMap;

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/reflect/Method;

    return-object p0
.end method
