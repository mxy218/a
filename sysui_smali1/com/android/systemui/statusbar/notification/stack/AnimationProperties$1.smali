.class Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;
.super Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
.source "AnimationProperties.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;->getAnimationFilter()Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;


# direct methods
.method constructor <init>(Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;)V
    .registers 2

    .line 38
    iput-object p1, p0, Lcom/android/systemui/statusbar/notification/stack/AnimationProperties$1;->this$0:Lcom/android/systemui/statusbar/notification/stack/AnimationProperties;

    invoke-direct {p0}, Lcom/android/systemui/statusbar/notification/stack/AnimationFilter;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldAnimateProperty(Landroid/util/Property;)Z
    .registers 2

    const/4 p0, 0x1

    return p0
.end method
