.class public Lcom/flyme/server/notfication/SpecialConditionUtils;
.super Ljava/lang/Object;
.source "SpecialConditionUtils.java"


# static fields
.field private static sSystemAppWhiteList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/flyme/server/notfication/SpecialConditionUtils;->sSystemAppWhiteList:Ljava/util/List;

    .line 11
    sget-object v0, Lcom/flyme/server/notfication/SpecialConditionUtils;->sSystemAppWhiteList:Ljava/util/List;

    const-string v1, "com.android.systemui"

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .line 6
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isInSystemAppWhiteList(Ljava/lang/String;)Z
    .registers 4
    .param p0, "pkg"  # Ljava/lang/String;

    .line 15
    const/4 v0, 0x0

    if-eqz p0, :cond_e

    .line 16
    sget-object v1, Lcom/flyme/server/notfication/SpecialConditionUtils;->sSystemAppWhiteList:Ljava/util/List;

    invoke-interface {v1, p0}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v1

    const/4 v2, -0x1

    if-eq v1, v2, :cond_d

    const/4 v0, 0x1

    :cond_d
    return v0

    .line 18
    :cond_e
    return v0
.end method
