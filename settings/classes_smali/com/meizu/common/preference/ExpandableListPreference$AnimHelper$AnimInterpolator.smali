.class Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;
.super Ljava/lang/Object;
.source "ExpandableListPreference.java"

# interfaces
.implements Landroid/view/animation/Interpolator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AnimInterpolator"
.end annotation


# instance fields
.field final synthetic this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;


# direct methods
.method private constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V
    .registers 2

    .line 464
    iput-object p1, p0, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;->this$1:Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;Lcom/meizu/common/preference/ExpandableListPreference$1;)V
    .registers 3

    .line 464
    invoke-direct {p0, p1}, Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper$AnimInterpolator;-><init>(Lcom/meizu/common/preference/ExpandableListPreference$AnimHelper;)V

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .registers 4

    const/high16 p0, 0x3f800000  # 1.0f

    sub-float/2addr p0, p1

    float-to-double p0, p0

    const-wide/high16 v0, 0x4008000000000000L  # 3.0

    .line 467
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide p0

    const-wide/high16 v0, 0x3ff0000000000000L  # 1.0

    sub-double/2addr v0, p0

    double-to-float p0, v0

    return p0
.end method
