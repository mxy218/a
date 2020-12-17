.class public Lcom/android/systemui/shared/plugins/VersionInfo;
.super Ljava/lang/Object;
.source "VersionInfo.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/shared/plugins/VersionInfo$Version;,
        Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;
    }
.end annotation


# instance fields
.field private mDefault:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field

.field private final mVersions:Landroid/util/ArrayMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/ArrayMap<",
            "Ljava/lang/Class<",
            "*>;",
            "Lcom/android/systemui/shared/plugins/VersionInfo$Version;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    .line 27
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 29
    new-instance v0, Landroid/util/ArrayMap;

    invoke-direct {v0}, Landroid/util/ArrayMap;-><init>()V

    iput-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    return-void
.end method

.method static synthetic access$100(Lcom/android/systemui/shared/plugins/VersionInfo;Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/VersionInfo$Version;
    .registers 2

    .line 27
    invoke-direct {p0, p1}, Lcom/android/systemui/shared/plugins/VersionInfo;->createVersion(Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    move-result-object p0

    return-object p0
.end method

.method private addClass(Ljava/lang/Class;Z)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;Z)V"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    return-void

    .line 51
    :cond_9
    const-class v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    const/4 v1, 0x1

    if-eqz v0, :cond_22

    .line 53
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v3, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result v0

    invoke-direct {v3, v0, v1}, Lcom/android/systemui/shared/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, p1, v3}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 55
    :cond_22
    const-class v0, Lcom/android/systemui/plugins/annotations/Requires;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/Requires;

    if-eqz v0, :cond_3e

    .line 57
    iget-object v2, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v3

    new-instance v4, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v0

    invoke-direct {v4, v0, p2}, Lcom/android/systemui/shared/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v2, v3, v4}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 59
    :cond_3e
    const-class v0, Lcom/android/systemui/plugins/annotations/Requirements;

    invoke-virtual {p1, v0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lcom/android/systemui/plugins/annotations/Requirements;

    const/4 v2, 0x0

    if-eqz v0, :cond_68

    .line 61
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/Requirements;->value()[Lcom/android/systemui/plugins/annotations/Requires;

    move-result-object v0

    array-length v3, v0

    move v4, v2

    :goto_4f
    if-ge v4, v3, :cond_68

    aget-object v5, v0, v4

    .line 62
    iget-object v6, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->target()Ljava/lang/Class;

    move-result-object v7

    new-instance v8, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    invoke-interface {v5}, Lcom/android/systemui/plugins/annotations/Requires;->version()I

    move-result v5

    invoke-direct {v8, v5, p2}, Lcom/android/systemui/shared/plugins/VersionInfo$Version;-><init>(IZ)V

    invoke-virtual {v6, v7, v8}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v4, v4, 0x1

    goto :goto_4f

    .line 65
    :cond_68
    const-class p2, Lcom/android/systemui/plugins/annotations/DependsOn;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p2

    check-cast p2, Lcom/android/systemui/plugins/annotations/DependsOn;

    if-eqz p2, :cond_79

    .line 67
    invoke-interface {p2}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object p2

    invoke-direct {p0, p2, v1}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    .line 69
    :cond_79
    const-class p2, Lcom/android/systemui/plugins/annotations/Dependencies;

    invoke-virtual {p1, p2}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lcom/android/systemui/plugins/annotations/Dependencies;

    if-eqz p1, :cond_96

    .line 71
    invoke-interface {p1}, Lcom/android/systemui/plugins/annotations/Dependencies;->value()[Lcom/android/systemui/plugins/annotations/DependsOn;

    move-result-object p1

    array-length p2, p1

    :goto_88
    if-ge v2, p2, :cond_96

    aget-object v0, p1, v2

    .line 72
    invoke-interface {v0}, Lcom/android/systemui/plugins/annotations/DependsOn;->target()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0, v1}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_88

    :cond_96
    return-void
.end method

.method private createVersion(Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/VersionInfo$Version;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/shared/plugins/VersionInfo$Version;"
        }
    .end annotation

    .line 109
    const-class p0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    invoke-virtual {p1, p0}, Ljava/lang/Class;->getDeclaredAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/plugins/annotations/ProvidesInterface;

    if-eqz p0, :cond_15

    .line 111
    new-instance p1, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    invoke-interface {p0}, Lcom/android/systemui/plugins/annotations/ProvidesInterface;->version()I

    move-result p0

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/android/systemui/shared/plugins/VersionInfo$Version;-><init>(IZ)V

    return-object p1

    :cond_15
    const/4 p0, 0x0

    return-object p0
.end method


# virtual methods
.method public addClass(Ljava/lang/Class;)Lcom/android/systemui/shared/plugins/VersionInfo;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lcom/android/systemui/shared/plugins/VersionInfo;"
        }
    .end annotation

    .line 41
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    if-nez v0, :cond_6

    .line 43
    iput-object p1, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    :cond_6
    const/4 v0, 0x0

    .line 45
    invoke-direct {p0, p1, v0}, Lcom/android/systemui/shared/plugins/VersionInfo;->addClass(Ljava/lang/Class;Z)V

    return-object p0
.end method

.method public checkVersion(Lcom/android/systemui/shared/plugins/VersionInfo;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/systemui/shared/plugins/VersionInfo$InvalidVersionException;
        }
    .end annotation

    .line 78
    new-instance v0, Landroid/util/ArrayMap;

    iget-object v1, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-direct {v0, v1}, Landroid/util/ArrayMap;-><init>(Landroid/util/ArrayMap;)V

    .line 79
    iget-object p1, p1, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    new-instance v1, Lcom/android/systemui/shared/plugins/VersionInfo$1;

    invoke-direct {v1, p0, v0}, Lcom/android/systemui/shared/plugins/VersionInfo$1;-><init>(Lcom/android/systemui/shared/plugins/VersionInfo;Landroid/util/ArrayMap;)V

    invoke-virtual {p1, v1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    .line 97
    new-instance p1, Lcom/android/systemui/shared/plugins/VersionInfo$2;

    invoke-direct {p1, p0}, Lcom/android/systemui/shared/plugins/VersionInfo$2;-><init>(Lcom/android/systemui/shared/plugins/VersionInfo;)V

    invoke-virtual {v0, p1}, Landroid/util/ArrayMap;->forEach(Ljava/util/function/BiConsumer;)V

    return-void
.end method

.method public getDefaultVersion()I
    .registers 2

    .line 37
    iget-object v0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    iget-object p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mDefault:Ljava/lang/Class;

    invoke-virtual {v0, p0}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/android/systemui/shared/plugins/VersionInfo$Version;

    invoke-static {p0}, Lcom/android/systemui/shared/plugins/VersionInfo$Version;->access$000(Lcom/android/systemui/shared/plugins/VersionInfo$Version;)I

    move-result p0

    return p0
.end method

.method public hasClass(Ljava/lang/Class;)Z
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;)Z"
        }
    .end annotation

    .line 117
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {p0, p1}, Landroid/util/ArrayMap;->containsKey(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public hasVersionInfo()Z
    .registers 1

    .line 33
    iget-object p0, p0, Lcom/android/systemui/shared/plugins/VersionInfo;->mVersions:Landroid/util/ArrayMap;

    invoke-virtual {p0}, Landroid/util/ArrayMap;->isEmpty()Z

    move-result p0

    xor-int/lit8 p0, p0, 0x1

    return p0
.end method
