.class public Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;
.super Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;
.source "FlymeStatusBarPluginImpl.java"


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;ZZZ)V
    .registers 5

    .line 317
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$FlymeNetWorkName;-><init>(Landroid/content/Context;ZZZ)V

    .line 318
    iput-object p1, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;->mContext:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public mergeNetWorkNames([Lcom/android/systemui/statusbar/policy/MobileSignalController;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    .line 323
    iget-object p0, p0, Lcom/flyme/systemui/statusbar/ext/FlymeStatusBarPluginImpl$ShopNetWorkName;->mContext:Landroid/content/Context;

    sget p1, Lcom/android/systemui/R$string;->demo_device:I

    invoke-virtual {p0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
