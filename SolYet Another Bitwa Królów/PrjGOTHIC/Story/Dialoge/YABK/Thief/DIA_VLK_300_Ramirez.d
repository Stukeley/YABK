// Dialog z Budowniczym Kuzni Niebieskiego Obozu



instance VLK_300_Ramirez_EXIT(C_Info)
{
	npc = VLK_300_Ramirez;
	condition = VLK_300_Ramirez_exit_condition;
	information = VLK_300_Ramirez_exit_info;
	important = FALSE;
	permanent = TRUE;
	nr = 999;
	description = Dialog_Ende;
};


func int VLK_300_Ramirez_exit_condition()
{
	return TRUE;
};

func void VLK_300_Ramirez_exit_info()
{
	AI_StopProcessInfos(self);
};


instance VLK_300_Ramirez_ERBAUEN(C_Info)
{
	npc = VLK_300_Ramirez;
	condition = VLK_300_Ramirez_erbauen_condition;
	information = VLK_300_Ramirez_erbauen_info;
	important = FALSE;
	permanent = TRUE;
	description = "Pracujcie dla mnie (70 sztuk z³ota)";
};


func int VLK_300_Ramirez_erbauen_condition()
{
	if(L2_SCHMIEDE_ERBAUT != TRUE)
	{
		return TRUE;
	};
};

func void VLK_300_Ramirez_erbauen_info()
{
	if(Npc_HasItems(hero,ItMi_Gold) >= 70)
	{
		B_GiveInvItems(other,self,ItMi_Gold,70);
		Npc_RemoveInvItems(self,ItMi_Gold,Npc_HasItems(self,ItMi_Gold));
		Wld_SendTrigger("TICK_TOCK");
		Log_CreateTopic ("Gildia z³odziei",LOG_NOTE);
		B_LogEntry("Gildia z³odziei","Gildia z³odziei mo¿e dla Ciebie pracowaæ. Po zatrudnieniu z³odzieje przemieszcz¹ siê do wrogiego fortu i zaczn¹ okradaæ mieszkañców. Ca³y dochód przeka¿¹ Tobie. Co 30 sekund otrzymasz miêdzy 0 a 10 sztuk z³ota, które przeciwnik straci.");
		B_StartOtherRoutine (VLK_3050_Joe,"START");
		B_StartOtherRoutine (VLK_500_Lutero,"Thief");
		B_StartOtherRoutine (VLK_501_Baltram,"Thief");
		B_StartOtherRoutine (VLK_502_Zuris,"Thief");
		B_StartOtherRoutine (VLK_503_Jora,"Thief");
		AI_StopProcessInfos(self);
	}
	else
	{
		AI_Output(self,other,"Brakuje ci z³ota");	//Nie masz wystarczaj¹co z³ota.
	};
};


