.class public Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;
.super Ljava/lang/Object;
.source "FlymeFileTypeMeasurement.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "MeasureRunnable"
.end annotation


# instance fields
.field private mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

.field private mMeasurelist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;Ljava/util/List;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;",
            "Ljava/util/List<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .line 277
    iput-object p1, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;->this$0:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 278
    iput-object p2, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    .line 279
    iput-object p3, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;->mMeasurelist:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public run()V
    .registers 2

    .line 284
    iget-object v0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;->mMeasureHandler:Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;

    iget-object p0, p0, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureRunnable;->mMeasurelist:Ljava/util/List;

    invoke-static {v0, p0}, Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;->access$600(Lcom/meizu/settings/deviceinfo/FlymeFileTypeMeasurement$MeasureHandler;Ljava/util/List;)V

    return-void
.end method
