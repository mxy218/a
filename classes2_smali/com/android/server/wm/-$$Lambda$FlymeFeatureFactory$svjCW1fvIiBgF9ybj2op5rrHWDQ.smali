.class public final synthetic Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Lcom/android/server/wm/FlymeWindowModeController;


# static fields
.field public static final synthetic INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;


# direct methods
.method static synthetic constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;

    invoke-direct {v0}, Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;-><init>()V

    sput-object v0, Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;->INSTANCE:Lcom/android/server/wm/-$$Lambda$FlymeFeatureFactory$svjCW1fvIiBgF9ybj2op5rrHWDQ;

    return-void
.end method

.method private synthetic constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onCalculate(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I
    .registers 9

    invoke-static/range {p1 .. p8}, Lcom/android/server/wm/FlymeFeatureFactory;->lambda$static$0(Lcom/android/server/wm/TaskRecord;Landroid/content/pm/ActivityInfo$WindowLayout;Lcom/android/server/wm/ActivityRecord;Lcom/android/server/wm/ActivityRecord;Landroid/app/ActivityOptions;ILcom/android/server/wm/LaunchParamsController$LaunchParams;Lcom/android/server/wm/LaunchParamsController$LaunchParams;)I

    move-result p1

    return p1
.end method
