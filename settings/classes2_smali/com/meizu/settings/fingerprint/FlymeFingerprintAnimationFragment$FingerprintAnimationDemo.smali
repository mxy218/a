.class Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;
.super Ljava/lang/Object;
.source "FlymeFingerprintAnimationFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "FingerprintAnimationDemo"
.end annotation


# instance fields
.field private animationImgId:I

.field private animationName:Ljava/lang/String;

.field private animationValue:I

.field private fileName:Ljava/lang/String;

.field final synthetic this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;


# direct methods
.method public constructor <init>(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;Ljava/lang/String;Ljava/lang/String;II)V
    .registers 6

    .line 177
    iput-object p1, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->this$0:Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 178
    iput-object p2, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationName:Ljava/lang/String;

    .line 179
    iput-object p3, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->fileName:Ljava/lang/String;

    .line 180
    iput p4, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationImgId:I

    .line 181
    iput p5, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationValue:I

    return-void
.end method

.method static synthetic access$100(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)I
    .registers 1

    .line 171
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationValue:I

    return p0
.end method

.method static synthetic access$200(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)Ljava/lang/String;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->fileName:Ljava/lang/String;

    return-object p0
.end method

.method static synthetic access$600(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)I
    .registers 1

    .line 171
    iget p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationImgId:I

    return p0
.end method

.method static synthetic access$800(Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;)Ljava/lang/String;
    .registers 1

    .line 171
    iget-object p0, p0, Lcom/meizu/settings/fingerprint/FlymeFingerprintAnimationFragment$FingerprintAnimationDemo;->animationName:Ljava/lang/String;

    return-object p0
.end method
