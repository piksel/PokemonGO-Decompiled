.class Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;
.super Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;
.source "SfidaUnityPlugin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->notifySpawnedLegendaryPokemon(Ljava/lang/String;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;


# direct methods
.method constructor <init>(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;
    .param p2, "pokemonId"    # Ljava/lang/String;

    .prologue
    .line 322
    iput-object p1, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    invoke-direct {p0, p2}, Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;-><init>(Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onClick()V
    .locals 3

    .prologue
    .line 325
    invoke-super {p0}, Lcom/nianticproject/holoholo/sfida/unity/EncounterPokemonClickCallback;->onClick()V

    .line 326
    iget-object v0, p0, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;->this$0:Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;

    # getter for: Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->sfidaService:Lcom/nianticproject/holoholo/sfida/service/SfidaService;
    invoke-static {v0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;->access$100(Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin;)Lcom/nianticproject/holoholo/sfida/service/SfidaService;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/nianticproject/holoholo/sfida/service/SfidaService;->setOnClickSfidaListener(Lcom/nianticproject/holoholo/sfida/service/SfidaButtonDetector$OnClickListener;)V

    .line 327
    const-string v0, "AndroidSfidaConnection"

    const-string v1, "EnterEncounterState"

    .line 330
    invoke-virtual {p0}, Lcom/nianticproject/holoholo/sfida/unity/SfidaUnityPlugin$7;->getId()Ljava/lang/String;

    move-result-object v2

    .line 327
    invoke-static {v0, v1, v2}, Lcom/unity3d/player/UnityPlayer;->UnitySendMessage(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 331
    return-void
.end method
